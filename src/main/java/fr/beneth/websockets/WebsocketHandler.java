package fr.beneth.websockets;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class WebsocketHandler extends TextWebSocketHandler{
    private final Logger Log = LoggerFactory.getLogger(this.getClass());
    
    @Override
    public void handleTextMessage(WebSocketSession session, TextMessage message) throws IOException {
        Log.debug(message.getPayload());
        session.sendMessage(new TextMessage("Hello".getBytes()));
    }
}

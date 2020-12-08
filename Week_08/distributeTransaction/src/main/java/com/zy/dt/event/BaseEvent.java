package com.zy.dt.event;

public interface BaseEvent {
    Object confirmEvent();
    Object tryEvent();
    Object cancelEvent();
}

.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final ALPHA_STRING:Ljava/lang/String; = "alpha_string"

.field public static final CARD_STATUS:Ljava/lang/String; = "card_status"

.field public static final CAT_ALPHA_NOTIFY_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.alpha_notify"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_ICC_STATUS_CHANGE:Ljava/lang/String; = "org.codeaurora.intent.action.stk.icc_status_change"

.field public static final CAT_IDLE_SCREEN_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.idle_screen"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.check_screen_idle"

.field public static final FLAG_WAIT_FOR_IDLE:Ljava/lang/String; = "flag_wait_for_idle"

.field public static final PROPERTY_STK_USERACTIVITY:Ljava/lang/String; = "gsm.stk.event.useractivity"

.field public static final REFRESH_RESULT:Ljava/lang/String; = "refresh_result"

.field public static final SLOT_ID:Ljava/lang/String; = "SLOT_ID"

.field public static final STK_USER_ACTIVITY:Ljava/lang/String; = "android.intent.action.stk.user_activity"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

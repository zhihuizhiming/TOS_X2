.class Landroid/media/AudioService$AudioServiceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService$AudioServiceBroadcastReceiver;->doNxpHack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$AudioServiceBroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/media/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 4244
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver$1;->this$1:Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4247
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4248
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4250
    :goto_0
    return-void

    .line 4249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Landroid/media/AudioService$AudioServiceBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 4252
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver$2;->this$1:Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 4255
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4256
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4258
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 4257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

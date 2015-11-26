.class Landroid/media/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->setCustomVolumeUI(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5027
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iput-object p2, p0, Landroid/media/AudioService$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/AudioService$3;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5030
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/AudioService$3;->val$className:Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->setCustomVolumeUIInternal(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;Ljava/lang/String;Ljava/lang/String;)V

    .line 5031
    return-void
.end method

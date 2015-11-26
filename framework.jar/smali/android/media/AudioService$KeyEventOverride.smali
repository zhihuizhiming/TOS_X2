.class Landroid/media/AudioService$KeyEventOverride;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventOverride"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5073
    .local p4, "streams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/media/AudioService$KeyEventOverride;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5074
    iput-object p2, p0, Landroid/media/AudioService$KeyEventOverride;->mPackageName:Ljava/lang/String;

    .line 5075
    iput-object p3, p0, Landroid/media/AudioService$KeyEventOverride;->mClassName:Ljava/lang/String;

    .line 5076
    iput-object p4, p0, Landroid/media/AudioService$KeyEventOverride;->mStreams:Ljava/util/Set;

    .line 5077
    return-void
.end method


# virtual methods
.method getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5080
    iget-object v0, p0, Landroid/media/AudioService$KeyEventOverride;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$KeyEventOverride;->mClassName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5081
    :cond_0
    const/4 v0, 0x0

    .line 5083
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/AudioService$KeyEventOverride;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/AudioService$KeyEventOverride;->mClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method overridesStream(I)Z
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 5087
    iget-object v0, p0, Landroid/media/AudioService$KeyEventOverride;->mStreams:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

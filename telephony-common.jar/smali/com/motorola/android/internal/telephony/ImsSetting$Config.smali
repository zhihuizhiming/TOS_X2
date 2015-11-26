.class abstract Lcom/motorola/android/internal/telephony/ImsSetting$Config;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Config"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$Config;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getSize()I
.end method

.method abstract populate(Ljava/nio/ByteBuffer;)V
.end method

.method abstract put(Ljava/nio/ByteBuffer;)V
.end method

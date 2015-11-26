.class Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PadingValue"
.end annotation


# instance fields
.field protected padSize:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    .line 247
    iput v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    .line 248
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    .line 243
    iput p2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    .line 244
    return-void
.end method

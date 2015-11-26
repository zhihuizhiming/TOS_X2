.class public Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 33
    .local v0, "hyphenStatus":Z
    if-eqz v0, :cond_0

    .line 36
    .end local p1    # "source":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "source":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phoneNumberE164"    # Ljava/lang/String;
    .param p3, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 45
    .local v0, "hyphenStatus":Z
    if-eqz v0, :cond_0

    .line 48
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

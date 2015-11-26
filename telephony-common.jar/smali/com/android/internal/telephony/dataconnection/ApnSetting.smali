.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Lcom/android/internal/telephony/dataconnection/DataProfile;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field mIsDedicatedHiPri:Z

.field private mLTESupportForSprint:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 19
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I

    .prologue
    .line 46
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move/from16 v11, p17

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p16

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mLTESupportForSprint:Z

    .line 38
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mIsDedicatedHiPri:Z

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IIIII)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearers"    # Ljava/lang/String;
    .param p19, "apnClass"    # I
    .param p20, "mtuSize"    # I
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConns_t"    # I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p17}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 66
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    .line 68
    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mtuSize:I

    .line 70
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    .line 71
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    .line 72
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    .line 76
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mLTESupportForSprint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mIsDedicatedHiPri:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mLTESupportForSprint:Z

    if-eqz v4, :cond_0

    if-nez p19, :cond_0

    .line 94
    const/4 v4, 0x0

    aget-object v4, p13, v4

    const-string v5, "internet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    .line 104
    :cond_0
    :goto_2
    if-eqz p18, :cond_3

    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 106
    const-string v4, ","

    move-object/from16 v0, p18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "strBearers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 109
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 78
    .end local v2    # "i":I
    .end local v3    # "strBearers":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mLTESupportForSprint:Z

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mIsDedicatedHiPri:Z

    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    aget-object v4, p13, v4

    const-string v5, "ota"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    goto :goto_2

    .line 98
    :cond_2
    const/4 v4, 0x0

    aget-object v4, p13, v4

    const-string v5, "pam"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    goto :goto_2

    .line 116
    :cond_3
    return-void

    .line 110
    .restart local v2    # "i":I
    .restart local v3    # "strBearers":[Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_4
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 22
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 145
    :cond_0
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const/16 v21, 0x2

    .line 147
    .local v21, "version":I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 153
    .local v19, "a":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 154
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    .end local v19    # "a":[Ljava/lang/String;
    .end local v21    # "version":I
    :cond_1
    const/16 v21, 0x1

    .restart local v21    # "version":I
    goto :goto_1

    .line 159
    .restart local v19    # "a":[Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v19, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 168
    .local v13, "authType":I
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 169
    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 170
    .local v14, "typeArray":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v19

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    const-string v15, "IP"

    .line 172
    .local v15, "protocol":Ljava/lang/String;
    const-string v16, "IP"

    .line 173
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .line 174
    .local v17, "carrierEnabled":Z
    const/16 v18, 0x0

    .line 190
    .local v18, "bearer":I
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    const/4 v5, 0x1

    aget-object v5, v19, v5

    const/4 v6, 0x2

    aget-object v6, v19, v6

    const/4 v7, 0x3

    aget-object v7, v19, v7

    const/4 v8, 0x7

    aget-object v8, v19, v8

    const/16 v9, 0x8

    aget-object v9, v19, v9

    const/16 v10, 0x9

    aget-object v10, v19, v10

    const/4 v11, 0x4

    aget-object v11, v19, v11

    const/4 v12, 0x5

    aget-object v12, v19, v12

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 160
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v17    # "carrierEnabled":Z
    .end local v18    # "bearer":I
    :catch_0
    move-exception v20

    .line 161
    .local v20, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_2

    .line 176
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_4

    .line 177
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 179
    :cond_4
    const/16 v1, 0xd

    aget-object v1, v19, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 180
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v19, v1

    .line 181
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v19, v1

    .line 183
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    :try_start_1
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 187
    .restart local v17    # "carrierEnabled":Z
    :goto_4
    const/16 v1, 0x11

    aget-object v1, v19, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .restart local v18    # "bearer":I
    goto :goto_3

    .line 184
    .end local v17    # "carrierEnabled":Z
    .end local v18    # "bearer":I
    :catch_1
    move-exception v20

    .line 185
    .restart local v20    # "e":Ljava/lang/Exception;
    const/16 v17, 0x1

    .restart local v17    # "carrierEnabled":Z
    goto :goto_4
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 246
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mLTESupportForSprint:Z

    if-eqz v6, :cond_7

    .line 247
    const-string v6, "dun"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 251
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "pam"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    .end local v3    # "t":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 248
    .restart local v3    # "t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "t":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 256
    goto :goto_1

    .line 259
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3
    const-string v6, "fota"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 263
    .restart local v3    # "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ota"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "t":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 268
    goto :goto_1

    .line 271
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 274
    .restart local v3    # "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "internet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v3    # "t":Ljava/lang/String;
    :cond_6
    move v4, v5

    .line 280
    goto :goto_1

    .line 284
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_4
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    .line 286
    .restart local v3    # "t":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mIsDedicatedHiPri:Z

    if-eqz v6, :cond_9

    .line 287
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 284
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 295
    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "hipri"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_1

    .end local v3    # "t":Ljava/lang/String;
    :cond_a
    move v4, v5

    .line 304
    goto/16 :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 311
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals2(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 328
    instance-of v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Z
    move-object v0, p1

    .line 330
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 333
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    iget-boolean v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    if-ne v3, v4, :cond_2

    .line 354
    const/4 v2, 0x1

    .line 356
    :cond_2
    if-eqz v2, :cond_0

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 361
    const/4 v2, 0x0

    .line 362
    goto/16 :goto_0

    .line 359
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    .end local v1    # "i":I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    return v0
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-string v0, "ApnSetting"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 211
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mtuSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

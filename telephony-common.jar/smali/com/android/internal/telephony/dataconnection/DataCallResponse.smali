.class public Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public bandwidth:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->DBG:Z

    .line 38
    const-string v0, "DataCallResponse"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->LOG_TAG:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 20
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "okToUseSystemPropertyDns"    # Z

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 125
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 129
    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 130
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "net."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 134
    .local v14, "propertyPrefix":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v13, :cond_8

    aget-object v2, v5, v10

    .line 139
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_2

    .line 138
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 127
    .end local v2    # "addr":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 144
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "ap":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 146
    const/16 v17, 0x0

    aget-object v2, v4, v17

    .line 147
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 153
    .local v3, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 157
    .local v11, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_0

    .line 158
    if-nez v3, :cond_3

    .line 160
    instance-of v0, v11, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v3, 0x20

    .line 162
    :cond_3
    :goto_4
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addr/pl="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v11, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 164
    .local v12, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 249
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "ia":Ljava/net/InetAddress;
    .end local v12    # "la":Landroid/net/LinkAddress;
    .end local v13    # "len$":I
    :catch_0
    move-exception v9

    .line 250
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 263
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    .local v15, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_5
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_4

    .line 265
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " result="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 271
    :cond_4
    return-object v15

    .line 149
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "addrPrefixLen":I
    goto/16 :goto_3

    .line 154
    :catch_1
    move-exception v9

    .line 155
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric ip addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 160
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    goto/16 :goto_4

    .line 168
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "ia":Ljava/net/InetAddress;
    .end local v13    # "len$":I
    :cond_7
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "no address for ifname="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 172
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v13, :cond_f

    aget-object v2, v5, v10

    .line 174
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v17

    if-eqz v17, :cond_a

    .line 173
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 178
    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v11

    .line 182
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_9

    .line 183
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_7

    .line 179
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v9

    .line 180
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric dns addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 186
    .end local v2    # "addr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    .line 187
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 188
    .local v8, "dnsServers":[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "dns1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 189
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "dns2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 190
    move-object v5, v8

    array-length v13, v5

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v13, :cond_f

    aget-object v7, v5, v10

    .line 191
    .local v7, "dnsAddr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v17

    if-eqz v17, :cond_d

    .line 190
    :cond_c
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 195
    :cond_d
    :try_start_7
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    .line 199
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_c

    .line 200
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_9

    .line 196
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v9

    .line 197
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric dns addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 204
    .end local v7    # "dnsAddr":Ljava/lang/String;
    .end local v8    # "dnsServers":[Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v17, Ljava/net/UnknownHostException;

    const-string v18, "Empty dns response and no system default dns"

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 208
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_11

    .line 209
    :cond_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "gw"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 210
    .local v16, "sysGateways":Ljava/lang/String;
    if-eqz v16, :cond_12

    .line 211
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 216
    .end local v16    # "sysGateways":Ljava/lang/String;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v13, :cond_14

    aget-object v2, v5, v10

    .line 217
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 216
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 213
    .end local v2    # "addr":Ljava/lang/String;
    .restart local v16    # "sysGateways":Ljava/lang/String;
    :cond_12
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    .line 221
    .end local v16    # "sysGateways":Ljava/lang/String;
    .restart local v2    # "addr":Ljava/lang/String;
    :cond_13
    :try_start_9
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v11

    .line 226
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_a
    new-instance v17, Landroid/net/RouteInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_c

    .line 222
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_4
    move-exception v9

    .line 223
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric gateway addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 231
    .end local v2    # "addr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_15

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v13, :cond_16

    aget-object v6, v5, v10

    .line 237
    .local v6, "bdw":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/LinkProperties;->addBandwidth(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 240
    .end local v6    # "bdw":Ljava/lang/String;
    :cond_15
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "0"

    aput-object v19, v17, v18

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "0"

    aput-object v19, v17, v18

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v13, :cond_16

    aget-object v6, v5, v10

    .line 244
    .restart local v6    # "bdw":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/LinkProperties;->addBandwidth(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 248
    .end local v6    # "bdw":Ljava/lang/String;
    :cond_16
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 255
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    .line 256
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 258
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_18
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "DataCallResponse: {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " retry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " active="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ifname=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v6, "\' MTU="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    const-string v6, " addresses=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 90
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    const-string v6, "] dnses=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 96
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 100
    :cond_3
    const-string v6, "] gateways=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 102
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 107
    :cond_5
    const-string v6, "] bandwidth=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_6

    aget-object v2, v1, v3

    .line 109
    .local v2, "bdw":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 112
    .end local v2    # "bdw":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->bandwidth:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 114
    :cond_7
    const-string v6, "]}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.class public Lcom/motorola/android/internal/telephony/UTCWrapper;
.super Ljava/lang/Object;
.source "UTCWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private lastUTCtime:J

.field private localTimeAdjustedToDST:Z

.field private localTimeOffsetMillis:J

.field private utcReceivedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 36
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 37
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    .line 39
    return-void
.end method

.method public constructor <init>(JJJZ)V
    .locals 0
    .param p1, "lastUTCtime"    # J
    .param p3, "utcReceivedTime"    # J
    .param p5, "localTimeffsetMillis"    # J
    .param p7, "localTimeAdjustedToDST"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 45
    iput-wide p3, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 46
    iput-wide p5, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 47
    iput-boolean p7, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 139
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 140
    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    .line 142
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getLastUTCtime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    return-wide v0
.end method

.method public getLocalTimeOffsetMillis()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    return-wide v0
.end method

.method public getUtcReceivedTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    return-wide v0
.end method

.method public isLocalTimeAdjustedToDST()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    return v0
.end method

.method public final readFromList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "inList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 133
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 134
    const-string v0, "1"

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setLastUTCtime(J)V
    .locals 0
    .param p1, "lastUTCtime"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    .line 62
    return-void
.end method

.method public setLocalTimeAdjustedToDST(Z)V
    .locals 0
    .param p1, "localTimeAdjustedToDST"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    .line 104
    return-void
.end method

.method public setLocalTimeOffsetMillis(J)V
    .locals 0
    .param p1, "localTimeOffsetMillis"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    .line 90
    return-void
.end method

.method public setUtcReceivedTime(J)V
    .locals 0
    .param p1, "utcReceivedTime"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->lastUTCtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->utcReceivedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeOffsetMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/UTCWrapper;->localTimeAdjustedToDST:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

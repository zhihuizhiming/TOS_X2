.class Lcom/android/server/location/GeoFencerProxy$2;
.super Landroid/location/IGeoFenceListener$Stub;
.source "GeoFencerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeoFencerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeoFencerProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeoFencerProxy;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy$2;->this$0:Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {p0}, Landroid/location/IGeoFenceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public geoFenceExpired(Landroid/location/GeoFenceParams;)V
    .locals 2
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy$2;->this$0:Lcom/android/server/location/GeoFencerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/GeoFencerProxy;->remove(Landroid/location/GeoFenceParams;Z)V

    .line 85
    return-void
.end method

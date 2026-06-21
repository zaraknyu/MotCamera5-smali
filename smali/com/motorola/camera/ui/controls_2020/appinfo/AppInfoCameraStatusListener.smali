.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# instance fields
.field public final cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

.field public final liveData:Landroidx/lifecycle/MutableLiveData;

.field public previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    iget-object v4, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget v0, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iget v4, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:Lcom/motorola/camera/device/CameraStateManager$Status;

    sget-object v5, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-ne v4, v5, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    if-eqz v3, :cond_5

    iget v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    const/4 v6, 0x2

    if-eq v6, v3, :cond_6

    move v3, v2

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    invoke-direct {v5, v4, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

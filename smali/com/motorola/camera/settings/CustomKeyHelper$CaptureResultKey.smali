.class public final Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mIdGenerator:I


# instance fields
.field public final mId:I

.field public final mName:Ljava/lang/String;

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mIdGenerator:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mIdGenerator:I

    iput v0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mId:I

    iput-object p1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mId:I

    iget p1, p1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_1
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p2, :cond_2

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;
    .locals 3

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p1, :cond_1

    .line 8
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;
    .locals 3

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p1, :cond_1

    .line 12
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;
    .locals 3

    .line 13
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p1, :cond_1

    .line 16
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mId:I

    return p0
.end method

.method public isKeySupported(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    if-eqz p1, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

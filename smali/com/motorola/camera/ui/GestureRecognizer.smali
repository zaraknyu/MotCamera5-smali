.class public final Lcom/motorola/camera/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firstCancel:Z

.field public final mDownUpDetector:Ljava/lang/Object;

.field public final mGestureDetector:Ljava/lang/Object;

.field public final mListener:Ljava/lang/Object;

.field public mPinchDetector:Ljava/lang/Object;

.field public mScaleFactor:F

.field public mTransFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    .line 12
    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    .line 13
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/DownUpDetector;

    new-instance p2, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    .line 15
    new-instance p1, Lcom/motorola/camera/StreamRequest;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/motorola/camera/StreamRequest;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/google/android/material/chip/Chip$1;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    .line 19
    iput-boolean v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getExpectedExposureTime()F
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/GestureRecognizer;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_TABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroidx/media3/extractor/PositionHolder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iput-wide v6, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-wide v6, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    iget v3, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    long-to-float p0, v0

    return p0

    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    :goto_3
    iget p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    return p0
.end method

.method public getSATCurrentMasterCameraId()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public refreshTextDimens(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :goto_0
    iput v3, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    iput-boolean v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/chip/Chip$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/resources/TextAppearance;

    if-eq v2, p1, :cond_2

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public supportsCharacteristicsExposureHints()Z
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/GestureRecognizer;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_TABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->isKeySupported(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_HYSTERESIS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->isKeySupported(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method public updateEnvironmentInfo(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/GestureRecognizer;->supportsCharacteristicsExposureHints()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/GestureRecognizer;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_HYSTERESIS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    const/4 v2, 0x1

    aget v3, p1, v2

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    aget p1, p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-eqz p1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    return-void
.end method

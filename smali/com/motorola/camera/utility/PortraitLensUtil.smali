.class public abstract Lcom/motorola/camera/utility/PortraitLensUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final focalSegmentsMap:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lcom/motorola/camera/utility/PortraitLensUtil;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensZoomValue:[F

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensBlurLevel:[I

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensOISBokehCamId:[I

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v4, v2

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    aget v12, v2, v7

    aget-object v11, v1, v7

    sget-object v15, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v9

    aget-object v9, v9, v8

    move-object v10, v9

    new-instance v9, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-eq v11, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v14, v3, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aget v16, v0, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v6, v10

    move v10, v13

    move-object v13, v14

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;-><init>(ZLcom/motorola/camera/settings/CameraType;FLjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v15, v6, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public static final getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;
    .locals 1

    const-string/jumbo v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    return-object p0
.end method

.method public static final getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F
    .locals 1

    const-string/jumbo v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static final hasCloseUpSegment()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final hasOriginalSegment()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasStandardSegment()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final hasWideSegment()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 1

    const-string/jumbo v0, "zoomSegment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    return-object p0

    :cond_2
    sget-object p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    return-object p0

    :cond_3
    sget-object p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    return-object p0
.end method

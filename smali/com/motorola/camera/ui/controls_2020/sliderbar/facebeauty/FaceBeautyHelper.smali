.class public abstract Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEAUTY_FEATURE_SETTING:Ljava/lang/Object;

.field public static final BEAUTY_FEATURE_TONING_SETTING:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field public static beautyVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "fast-adjustment"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lkotlin/Pair;

    const-string/jumbo v3, "smoothing"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lkotlin/Pair;

    const-string/jumbo v4, "toning-type"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lkotlin/Pair;

    const-string/jumbo v5, "toning"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "big-eyes"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v6, Lkotlin/Pair;

    const-string/jumbo v7, "slim-face"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v7, Lkotlin/Pair;

    const-string/jumbo v8, "slim-nose"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v7}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->BEAUTY_FEATURE_SETTING:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_WHITE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_RED:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_NATURAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4, v5}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->BEAUTY_FEATURE_TONING_SETTING:Ljava/lang/Object;

    const-string v0, "V8"

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->beautyVersion:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultFeaturesFromCache(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_DEFAULT_FEATURES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-static {p1, p0}, Lcom/motorola/camera/mcf/McfBeautyUtil;->getDefaultLevelsOfBeautyFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "successful"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_DEFAULT_FEATURES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-object v1

    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method public static getFaceBeautyToningType()I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static getToningFeatures()Ljava/util/ArrayList;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const v10, 0x7f1201e2

    const/4 v11, 0x0

    const-string/jumbo v2, "toning-back"

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    const v9, 0x7f0801c3

    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object v4, v3

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const v11, 0x7f1201e6

    const/4 v12, 0x0

    const-string/jumbo v3, "toning-white"

    const/4 v8, 0x0

    const/16 v9, 0x64

    const v10, 0x7f0801b4

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object v13, v2

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const v11, 0x7f1201e5

    const-string/jumbo v3, "toning-tan"

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object v14, v2

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const v11, 0x7f1201e4

    const-string/jumbo v3, "toning-red"

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    filled-new-array {v1, v13, v14, v2}, [Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->beautyVersion:Ljava/lang/String;

    const-string v2, "V8.5"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const v11, 0x7f1201e3

    const/4 v12, 0x0

    const-string/jumbo v3, "toning-natural"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x64

    const v10, 0x7f0801b4

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getToningKey(I)Lcom/motorola/camera/settings/SettingsManager$Key;
    .locals 2

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->BEAUTY_FEATURE_TONING_SETTING:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final initData(Lcom/motorola/camera/fsm/camera/UseCase;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the camera id is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p0, v0, :cond_2

    .line 3
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final initData(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getDefaultFeaturesFromCache(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    .line 12
    invoke-static {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->parseFeatures(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->updateFeatureSettings(Ljava/util/HashMap;)V

    return-void
.end method

.method public static parseFeatures(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 12

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fast-adjustment"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "min"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "max"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v9, "value"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v10, "engine-version"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->beautyVersion:Ljava/lang/String;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    const/4 v10, -0x1

    if-eq p0, v10, :cond_2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    const-string v2, "defaults-by-level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.json.JSONArray"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONArray;

    add-int/lit8 v2, p0, -0x1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-le v2, v10, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_3
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    invoke-direct {v2, p0, v5, v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;-><init>(III)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, "keys(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "level"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/json/JSONObject;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v5, v8, v10, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;-><init>(III)V

    invoke-virtual {v0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static parseRange(IIIZ)I
    .locals 0

    sub-int/2addr p2, p1

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    if-eqz p3, :cond_1

    int-to-float p0, p0

    mul-float/2addr p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0

    :cond_1
    mul-int/2addr p0, p2

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static setFaceBeautyFeatures(ILjava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->BEAUTY_FEATURE_SETTING:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static updateFeatureSettings(Ljava/util/HashMap;)V
    .locals 5

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    const-string/jumbo v3, "toning-type"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->setFaceBeautyFeatures(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningKey(I)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    const-string/jumbo v2, "toning"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->setFaceBeautyFeatures(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

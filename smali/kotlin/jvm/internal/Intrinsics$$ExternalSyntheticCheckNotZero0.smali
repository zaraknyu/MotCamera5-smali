.class public abstract synthetic Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final _getJsonValue(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->name(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->name(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMPackageName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "com.motorola.imagertuning_V2_Bundle"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "com.motorola.imagertuningbundle"

    return-object p0

    :cond_2
    const-string p0, "com.motorola.imagertuning_V3"

    return-object p0

    :cond_3
    const-string p0, "com.motorola.imagertuning_V2"

    return-object p0

    :cond_4
    const-string p0, "com.motorola.imagertuning_V5"

    return-object p0
.end method

.method public static synthetic getMX$1(I)F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return v1

    :cond_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic getMY(I)F
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    return v1

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_4
    return v1
.end method

.method public static m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 2
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 1

    .line 5
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 6
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    .line 11
    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    return-object p0
.end method

.method public static m(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZLandroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/CameraState$1;)Landroidx/profileinstaller/DeviceProfileWriter;
    .locals 1

    .line 13
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    .line 14
    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 15
    iput-object v0, p3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    .line 16
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, p3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    .line 17
    invoke-virtual {p4, p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    .line 18
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 1

    .line 19
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 20
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 23
    invoke-virtual {p3, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    .line 24
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    .line 25
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object p0
.end method

.method public static m(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    .line 27
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    .line 29
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    return-object p0
.end method

.method public static m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 0

    .line 30
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 32
    invoke-virtual {p3, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    .line 33
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    .line 34
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object p0
.end method

.method public static m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, p2, p3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static m(Landroidx/profileinstaller/DeviceProfileWriter;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V
    .locals 0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(ILjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->createParameterIsNullExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    const-class p1, Lkotlin/jvm/internal/Intrinsics;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 56
    throw p0
.end method

.method public static m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 43
    invoke-virtual {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    .line 45
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m$1(ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-static {p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlin/jvm/internal/Intrinsics;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic name(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ON"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "OFF"

    return-object p0

    :cond_2
    const-string p0, "AUTO"

    return-object p0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "STOPPED"

    return-object p0

    :cond_1
    const-string p0, "STARTED"

    return-object p0
.end method

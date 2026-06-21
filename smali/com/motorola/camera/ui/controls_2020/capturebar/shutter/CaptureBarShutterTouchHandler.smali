.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;


# instance fields
.field public final actionMap:Ljava/lang/Object;

.field public final am:Landroid/view/accessibility/AccessibilityManager;

.field public downCount:I

.field public downDuration:J

.field public downEvent:Landroid/view/MotionEvent;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public firstDownTime:J

.field public longClickable:Z

.field public longExposureStart:J

.field public longPress:Z

.field public final longPressTimeout:J

.field public shouldTriggerShutterCancel:Z

.field public final shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

.field public triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

.field public unsetPhotoStateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;Lcom/motorola/camera/EventListener;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "eventListener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v10, 0x5

    invoke-direct {v8, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    move-object v10, v9

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v13, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    move-object v11, v10

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v13, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v15, 0x6

    invoke-direct {v8, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    move-object v15, v11

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v14, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v15

    filled-new-array/range {v6 .. v11}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_AI:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v10, 0x5

    invoke-direct {v6, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v12, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v11, 0x1

    invoke-direct {v6, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v12, 0x6

    invoke-direct {v6, v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v14, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    filled-new-array/range {v16 .. v21}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_BURST_SHOT:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_BURST_SHOT_STOP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/16 v11, 0x8

    invoke-direct {v6, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v12, 0x1

    invoke-direct {v6, v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v11, v12}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_SLOW_MOTION_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v16, v7

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v17, v8

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_TIMELAPSE_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v22, v7

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v23, v8

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v8, 0x7

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER_ARC_LONG_EXPOSURE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v13, 0x7

    invoke-direct {v6, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v24, v7

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v25, v8

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v18, v9

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    move-object/from16 v19, v10

    const/4 v10, 0x6

    invoke-direct {v6, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v14, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8, v9, v10}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_NIGHT_VISION_SLOW:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v8, 0x3

    invoke-direct {v6, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>(I)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v8, v6, v4, v5}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v28, v4

    move-object/from16 v27, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v26, v13

    filled-new-array/range {v15 .. v28}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPressTimeout:J

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setOnCancelPendingInputEventsListener(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    const-string p1, "listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Shutter Up"

    invoke-static {p0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_5

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_5
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-wide v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    :cond_8
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_9

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v3 .. v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 11

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longClickable:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    :cond_3
    :goto_0
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-eqz v4, :cond_18

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v4, v8, :cond_13

    const/4 v10, 0x0

    if-eq v4, v5, :cond_f

    const/4 v11, 0x3

    if-eq v4, v11, :cond_d

    const/4 v11, 0x5

    if-eq v4, v11, :cond_18

    const/4 v2, 0x6

    if-eq v4, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v9

    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    if-eqz v4, :cond_3

    invoke-virtual {v7, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    cmpl-float v8, v4, v10

    if-lez v8, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v4, v4, v8

    if-gez v4, :cond_19

    cmpl-float v4, v5, v10

    if-lez v4, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_19

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_6

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_6
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    return v3

    :cond_7
    iget-wide v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0xc8

    cmp-long v4, v4, v9

    if-lez v4, :cond_a

    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_a

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v8, :cond_a

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v15, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_a
    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_b

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v8, :cond_b

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v15, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    if-nez v0, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :cond_d
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v1, :cond_e

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_e

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v10, :cond_e

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    const-wide/16 v15, 0x0

    move/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v10 .. v18}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_e
    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return v3

    :cond_f
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    if-nez v4, :cond_12

    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-nez v4, :cond_11

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_11

    goto :goto_2

    :cond_11
    :goto_1
    move v8, v3

    :cond_12
    :goto_2
    iput-boolean v8, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    return v3

    :cond_13
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_17

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v4, :cond_17

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    goto :goto_3

    :cond_14
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    if-eqz v1, :cond_17

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_15

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v10, :cond_15

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-wide v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-wide v15, v1

    move/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v10 .. v18}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_15
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    if-eqz v1, :cond_16

    invoke-virtual {v7, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_16
    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    :cond_17
    :goto_3
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    return v3

    :cond_18
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1a

    :cond_19
    :goto_4
    return v3

    :cond_1a
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v4, :cond_1b

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return v3

    :cond_1b
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    if-eqz v4, :cond_1c

    invoke-virtual {v7, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1c
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_1d

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v8, :cond_1d

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v15, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_1d
    new-instance v4, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v6, 0x10

    invoke-direct {v4, v0, v1, v2, v6}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    iget-wide v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPressTimeout:J

    int-to-long v5, v5

    mul-long/2addr v0, v5

    invoke-virtual {v7, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

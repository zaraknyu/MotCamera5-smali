.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $requiredAnimation:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$requiredAnimation:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-wide v3, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->$requiredAnimation:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

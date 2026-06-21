.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;->$animDuration:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$animateFloat"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x23fb3ed0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-boolean p3, p3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p0, 0x4

    const/4 p1, 0x0

    invoke-static {v0, v0, p1, p0}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/EnterExitState;

    sget-object p3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$AnimatedControlBar$2$scale$1;->$animDuration:I

    if-ne p1, p3, :cond_1

    mul-int/lit8 p1, p0, 0x2

    sget-object p3, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v1, p0, p1, p3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    move-object p0, v1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance p3, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {p3, p0, v0, p1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    move-object p0, p3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $animDuration$inlined:I

.field public final synthetic $items:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->$animDuration$inlined:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v3, p3

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    or-int/2addr p4, p3

    goto :goto_1

    :cond_1
    move p4, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p4, p3

    :cond_3
    and-int/lit16 p3, p4, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eq p3, v0, :cond_4

    move p3, v1

    goto :goto_3

    :cond_4
    move p3, v6

    :goto_3
    and-int/2addr p4, v1

    invoke-virtual {v3, p4, p3}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->$items:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const p2, 0x3f64f8d8

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->$animDuration$inlined:I

    mul-int/lit8 p3, p2, 0x2

    sget-object p4, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    new-instance p3, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {p3, p2, v6, p4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    new-instance v2, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v2, p2, p2, p4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v2

    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;

    invoke-direct {v2, v0, p1, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$4;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ListItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

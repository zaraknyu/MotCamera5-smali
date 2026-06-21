.class public final Landroidx/compose/animation/CrossfadeKt$Crossfade$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $animationSpec:Ljava/lang/Object;

.field public final synthetic $content:Ljava/lang/Object;

.field public final synthetic $contentKey:Ljava/lang/Object;

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_Crossfade:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    iput p6, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p7, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    iput p6, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    iput p6, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/Float;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/TransitionKt;->UpdateInitialAndTargetValues(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/Lambda;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$modifier:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$animationSpec:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroidx/compose/animation/core/TweenSpec;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$contentKey:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$content:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

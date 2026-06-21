.class public final Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroidx/compose/animation/core/AnimationState;

.field public L$1:Landroidx/compose/animation/core/Animation;

.field public L$2:Lkotlin/jvm/functions/Function1;

.field public L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

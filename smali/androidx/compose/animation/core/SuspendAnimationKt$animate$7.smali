.class public final Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_animate:Landroidx/compose/animation/core/AnimationState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/AnimationState;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $dialog:Ljava/lang/Object;

.field public final synthetic $layoutDirection:Ljava/lang/Object;

.field public final synthetic $onDismissRequest:Ljava/lang/Object;

.field public final synthetic $properties:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$dialog:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$onDismissRequest:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$properties:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$layoutDirection:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$properties:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$dialog:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$onDismissRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Number;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Number;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$layoutDirection:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    iput-object v4, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->initialValue:Ljava/lang/Number;

    iput-object v5, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->targetValue:Ljava/lang/Number;

    new-instance v1, Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v3, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    iput-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$dialog:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/window/DialogWrapper;

    iget-object v1, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$onDismissRequest:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$properties:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/window/DialogProperties;

    iget-object p0, p0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;->$layoutDirection:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/ui/window/DialogWrapper;->updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

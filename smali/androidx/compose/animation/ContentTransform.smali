.class public final Landroidx/compose/animation/ContentTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final initialContentExit:Landroidx/compose/animation/ExitTransitionImpl;

.field public final sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

.field public final targetContentEnter:Landroidx/compose/animation/EnterTransitionImpl;

.field public final targetContentZIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V
    .locals 2

    sget-object v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    new-instance v1, Landroidx/compose/animation/SizeTransformImpl;

    invoke-direct {v1, v0}, Landroidx/compose/animation/SizeTransformImpl;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->targetContentEnter:Landroidx/compose/animation/EnterTransitionImpl;

    iput-object p2, p0, Landroidx/compose/animation/ContentTransform;->initialContentExit:Landroidx/compose/animation/ExitTransitionImpl;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    iput-object p1, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iput-object v1, p0, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    return-void
.end method

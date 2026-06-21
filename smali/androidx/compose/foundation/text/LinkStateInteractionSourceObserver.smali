.class public final Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    return-void
.end method

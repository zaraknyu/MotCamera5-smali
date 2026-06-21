.class public final Landroidx/compose/foundation/FocusedBoundsObserverNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;


# instance fields
.field public onPositioned:Landroidx/compose/runtime/Recomposer$effectJob$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/NoIndicationInstance;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/compose/foundation/NoIndicationInstance;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    return-void
.end method


# virtual methods
.method public final getTraverseKey()Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    return-object p0
.end method

.method public final onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onPositioned:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    :cond_0
    return-void
.end method

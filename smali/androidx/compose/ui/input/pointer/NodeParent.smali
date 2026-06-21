.class public Landroidx/compose/ui/input/pointer/NodeParent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final children:Landroidx/compose/runtime/collection/MutableVector;

.field public final removeMatchingPointerInputModifierNodeList:Landroidx/collection/MutableObjectList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->removeMatchingPointerInputModifierNodeList:Landroidx/collection/MutableObjectList;

    return-void
.end method


# virtual methods
.method public buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/google/android/gms/tasks/zzr;Z)Z
    .locals 5

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v4, v0, v2

    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/google/android/gms/tasks/zzr;Z)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public cleanUpHits(Lcom/google/android/gms/tasks/zzr;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    iget v0, v0, Landroidx/media3/common/util/LongArray;->size:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

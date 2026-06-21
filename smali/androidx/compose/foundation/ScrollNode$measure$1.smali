.class public final Landroidx/compose/foundation/ScrollNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $placeable:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $side:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    iput-object p4, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$placeable:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composition;

    iget-object v2, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->$placeable:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    iget-object v3, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    iget v0, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    if-ne v4, v0, :cond_9

    iget-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    instance-of v4, v1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v4, :cond_9

    iget-object v4, v2, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_9

    const/4 v7, 0x0

    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_7

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    iget-object v14, v2, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v13

    iget-object v15, v2, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v15, v15, v13

    if-eq v15, v0, :cond_0

    const/4 v15, 0x1

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_3

    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/CompositionImpl;

    move/from16 p1, v11

    iget-object v11, v6, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v11, v14, v3}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of v11, v14, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v11, :cond_2

    move-object v11, v14

    check-cast v11, Landroidx/compose/runtime/DerivedSnapshotState;

    move/from16 v16, v0

    iget-object v0, v6, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, v11}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v14}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move/from16 v16, v0

    goto :goto_3

    :cond_3
    move/from16 v16, v0

    move/from16 p1, v11

    :cond_4
    :goto_3
    if-eqz v15, :cond_6

    invoke-virtual {v2, v13}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    goto :goto_4

    :cond_5
    move/from16 v16, v0

    move/from16 p1, v11

    :cond_6
    :goto_4
    shr-long v8, v8, p1

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, p1

    move/from16 v0, v16

    goto :goto_1

    :cond_7
    move/from16 v16, v0

    move v0, v11

    if-ne v10, v0, :cond_9

    goto :goto_5

    :cond_8
    move/from16 v16, v0

    :goto_5
    if-eq v7, v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/ScrollNode;

    iget-object v2, v2, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-object v2, v2, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_a

    move v2, v3

    :cond_a
    iget v4, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    if-le v2, v4, :cond_b

    move v2, v4

    :cond_b
    neg-int v2, v2

    iget-object v0, v0, Landroidx/compose/foundation/ScrollNode$measure$1;->$placeable:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iput-boolean v3, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

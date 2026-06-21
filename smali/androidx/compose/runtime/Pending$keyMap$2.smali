.class public final Landroidx/compose/runtime/Pending$keyMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    const/16 p2, 0xe

    iput p2, p0, Landroidx/compose/runtime/Pending$keyMap$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Brush;J)V
    .locals 0

    const/16 p2, 0x1d

    iput p2, p0, Landroidx/compose/runtime/Pending$keyMap$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/Pending$keyMap$2;->$r8$classId:I

    const/16 v6, 0x8

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    check-cast v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    iget-object v0, v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->$shader:Landroid/graphics/Shader;

    return-object v0

    :pswitch_0
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0, v11}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v1

    :pswitch_1
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0

    :pswitch_2
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/spatial/RectManager;

    iput-object v12, v0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const-string v1, "OnPositionedDispatch"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->dispatchCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_3
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    iget-object v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Brush;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v13, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v0, :cond_0

    iput-boolean v13, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalManager;

    iget-object v1, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v2, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    iput-boolean v11, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v5, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v6, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v7, v11

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    iget-object v9, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v9, v9, v7

    check-cast v9, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    iget-boolean v10, v8, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v10, :cond_1

    invoke-static {v8, v9, v4}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ProvidableModifierLocal;Ljava/util/HashSet;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object v0, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_1
    if-ge v11, v3, :cond_4

    aget-object v5, v0, v11

    check-cast v5, Landroidx/compose/ui/node/BackwardsCompatNode;

    iget-object v6, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v6, v6, v11

    check-cast v6, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-boolean v7, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_3

    invoke-static {v5, v6, v4}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ProvidableModifierLocal;Ljava/util/HashSet;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalConsumer()V

    goto :goto_2

    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v12, v12, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v12, v12, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v14, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    if-eq v14, v12, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    iget-object v12, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v14, v0

    sub-int/2addr v14, v10

    if-ltz v14, :cond_9

    move v10, v11

    const-wide/16 v15, 0x80

    :goto_3
    aget-wide v2, v0, v10

    const-wide/16 v17, 0xff

    not-long v4, v2

    shl-long/2addr v4, v9

    and-long/2addr v4, v2

    and-long/2addr v4, v7

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    sub-int v4, v10, v14

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    move v5, v11

    :goto_4
    if-ge v5, v4, :cond_7

    and-long v19, v2, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_6

    shl-int/lit8 v19, v10, 0x3

    add-int v19, v19, v5

    aget-object v19, v12, v19

    move-wide/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iput-boolean v13, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v7

    :goto_5
    shr-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v20

    goto :goto_4

    :cond_7
    move-wide/from16 v20, v7

    if-ne v4, v6, :cond_9

    goto :goto_6

    :cond_8
    move-wide/from16 v20, v7

    :goto_6
    if-eq v10, v14, :cond_9

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v7, v20

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v1, v11, v9}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object v0, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0

    :pswitch_9
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    iget v1, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->drawCount:I

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->invalidateCount$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v2

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-wide/from16 v20, v7

    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    :goto_7
    iget-object v1, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/PreferenceManager;

    iget-object v2, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v3, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-nez v3, :cond_11

    iput-boolean v13, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v5, v11

    :goto_8
    if-ge v5, v3, :cond_10

    aget-object v7, v4, v5

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    iget-object v7, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    iget-object v12, v8, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v14, v8, Landroidx/collection/MutableScatterSet;->metadata:[J

    move/from16 v19, v13

    array-length v13, v14

    sub-int/2addr v13, v10

    move/from16 v24, v9

    move-wide/from16 v22, v15

    if-ltz v13, :cond_f

    move v15, v11

    :goto_9
    aget-wide v9, v14, v15

    move-object/from16 v25, v12

    not-long v11, v9

    shl-long v11, v11, v24

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_e

    sub-int v11, v15, v13

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v11, :cond_d

    and-long v26, v9, v17

    cmp-long v26, v26, v22

    if-gez v26, :cond_c

    shl-int/lit8 v26, v15, 0x3

    add-int v26, v26, v12

    move/from16 v27, v6

    aget-object v6, v25, v26

    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_c
    move/from16 v27, v6

    :goto_b
    shr-long v9, v9, v27

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v27

    goto :goto_a

    :cond_d
    if-ne v11, v6, :cond_f

    :cond_e
    if-eq v15, v13, :cond_f

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v25

    const/4 v11, 0x0

    goto :goto_9

    :cond_f
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v19

    move-wide/from16 v15, v22

    move/from16 v9, v24

    const/4 v10, 0x2

    const/4 v11, 0x0

    goto :goto_8

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_10
    move/from16 v24, v9

    move v3, v11

    move/from16 v19, v13

    move-wide/from16 v22, v15

    :try_start_3
    iput-boolean v3, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    const/4 v3, 0x0

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_f

    :goto_d
    iput-boolean v3, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_11
    move/from16 v24, v9

    move v3, v11

    move/from16 v19, v13

    move-wide/from16 v22, v15

    :goto_e
    monitor-exit v2

    iget-object v1, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/PreferenceManager;

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->access$drainChanges(Landroidx/preference/PreferenceManager;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_12
    move v11, v3

    move/from16 v13, v19

    move-wide/from16 v15, v22

    move/from16 v9, v24

    const/4 v10, 0x2

    goto/16 :goto_7

    :goto_f
    monitor-exit v2

    throw v0

    :pswitch_c
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    if-eqz v2, :cond_13

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "Value should be initialized"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-lez v3, :cond_15

    monitor-exit v1

    if-eqz v2, :cond_14

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_15
    :try_start_5
    const-string v2, "Recomposer shutdown; frame clock awaiter will never resume"

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    invoke-static {v2, v0}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_e
    throw v12

    :pswitch_f
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move/from16 v19, v13

    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    iget-object v0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    iput-object v12, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_12
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    iput-object v12, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_13
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/unit/IntRect;

    iget v1, v0, Landroidx/compose/ui/unit/IntRect;->left:I

    iget v0, v0, Landroidx/compose/ui/unit/IntRect;->top:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v2

    :pswitch_14
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    return-object v0

    :pswitch_15
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :pswitch_16
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    return-object v0

    :pswitch_18
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/ScrollingContainerNode;

    sget-object v1, Landroidx/compose/foundation/OverscrollKt;->LocalOverscrollFactory:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    iput-object v1, v0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactory:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    if-eqz v1, :cond_17

    new-instance v12, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v2, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    iget-object v3, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    iget-wide v4, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    invoke-direct {v12, v2, v3, v4, v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;J)V

    :cond_17
    iput-object v12, v0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move/from16 v24, v9

    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    iget-object v0, v0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1a
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/AbstractClickableNode;

    iget-object v0, v0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1b
    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_1c
    move v3, v11

    move/from16 v19, v13

    iget-object v0, v0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Pending;

    iget-object v0, v0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Landroidx/collection/MutableScatterMap;

    invoke-direct {v2, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :goto_10
    if-ge v4, v1, :cond_1e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/KeyInfo;

    iget-object v6, v5, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    iget v7, v5, Landroidx/compose/runtime/KeyInfo;->key:I

    if-eqz v6, :cond_18

    new-instance v6, Landroidx/compose/runtime/JoinedKey;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v5, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_11

    :cond_18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_11
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_19

    move/from16 v8, v19

    goto :goto_12

    :cond_19
    move v8, v3

    :goto_12
    if-eqz v8, :cond_1a

    move-object v9, v12

    goto :goto_13

    :cond_1a
    iget-object v9, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v7

    :goto_13
    if-nez v9, :cond_1b

    :goto_14
    const/4 v11, 0x2

    goto :goto_15

    :cond_1b
    instance-of v10, v9, Landroidx/collection/MutableObjectList;

    if-eqz v10, :cond_1c

    check-cast v9, Landroidx/collection/MutableObjectList;

    invoke-virtual {v9, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    move-object v5, v9

    goto :goto_14

    :cond_1c
    sget-object v10, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    new-instance v10, Landroidx/collection/MutableObjectList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroidx/collection/MutableObjectList;-><init>(I)V

    invoke-virtual {v10, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-virtual {v10, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    move-object v5, v10

    :goto_15
    if-eqz v8, :cond_1d

    not-int v7, v7

    iget-object v8, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aput-object v6, v8, v7

    iget-object v6, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v7

    goto :goto_16

    :cond_1d
    iget-object v6, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v7

    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1e
    new-instance v0, Landroidx/compose/runtime/collection/MultiValueMap;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

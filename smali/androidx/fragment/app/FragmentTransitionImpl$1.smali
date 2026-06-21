.class public final Landroidx/fragment/app/FragmentTransitionImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$inNames:Ljava/util/List;

.field public final synthetic val$numSharedElements:I

.field public final synthetic val$outNames:Ljava/lang/Object;

.field public final synthetic val$sharedElementsIn:Ljava/util/List;

.field public final synthetic val$sharedElementsOut:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$numSharedElements:I

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsOut:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    iput p4, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$numSharedElements:I

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsOut:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->$r8$classId:I

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OpReorderer;->getOldListSize()I

    move-result v4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OpReorderer;->getNewListSize()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    new-array v8, v4, [I

    div-int/lit8 v9, v4, 0x2

    new-array v4, v4, [I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v12

    if-lt v12, v5, :cond_16

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v12

    if-ge v12, v5, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v12

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v14

    add-int/2addr v14, v12

    add-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    iget v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int v15, v5, v9

    aput v12, v8, v15

    iget v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    aput v12, v4, v15

    move v12, v3

    :goto_1
    if-ge v12, v14, :cond_16

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v15

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    rem-int/lit8 v15, v15, 0x2

    if-ne v15, v5, :cond_1

    move v15, v5

    goto :goto_2

    :cond_1
    move v15, v3

    :goto_2
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v16

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v17

    sub-int v16, v16, v17

    neg-int v13, v12

    move v5, v13

    :goto_3
    if-gt v5, v12, :cond_a

    if-eq v5, v13, :cond_4

    if-eq v5, v12, :cond_2

    add-int/lit8 v19, v5, 0x1

    add-int v19, v19, v9

    aget v3, v8, v19

    add-int/lit8 v19, v5, -0x1

    add-int v19, v19, v9

    move-object/from16 v20, v2

    aget v2, v8, v19

    if-le v3, v2, :cond_3

    goto :goto_5

    :cond_2
    move-object/from16 v20, v2

    :cond_3
    add-int/lit8 v2, v5, -0x1

    add-int/2addr v2, v9

    aget v2, v8, v2

    add-int/lit8 v3, v2, 0x1

    :goto_4
    move/from16 v19, v5

    goto :goto_6

    :cond_4
    move-object/from16 v20, v2

    :goto_5
    add-int/lit8 v2, v5, 0x1

    add-int/2addr v2, v9

    aget v2, v8, v2

    move v3, v2

    goto :goto_4

    :goto_6
    iget v5, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move/from16 v21, v5

    iget v5, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v5, v3, v5

    add-int v5, v5, v21

    sub-int v5, v5, v19

    if-eqz v12, :cond_6

    if-eq v3, v2, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v21, v5, -0x1

    move/from16 v24, v21

    move/from16 v21, v3

    move/from16 v3, v24

    goto :goto_8

    :cond_6
    :goto_7
    move/from16 v21, v3

    move v3, v5

    :goto_8
    move/from16 v22, v9

    move v9, v5

    move/from16 v5, v21

    move/from16 v21, v22

    move/from16 v22, v14

    :goto_9
    iget v14, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v5, v14, :cond_7

    iget v14, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v9, v14, :cond_7

    invoke-virtual {v1, v5, v9}, Landroidx/recyclerview/widget/OpReorderer;->areItemsTheSame(II)Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_7
    add-int v14, v19, v21

    aput v5, v8, v14

    if-eqz v15, :cond_8

    sub-int v14, v16, v19

    move/from16 v23, v15

    add-int/lit8 v15, v13, 0x1

    if-lt v14, v15, :cond_9

    add-int/lit8 v15, v12, -0x1

    if-gt v14, v15, :cond_9

    add-int v14, v14, v21

    aget v14, v4, v14

    if-gt v14, v5, :cond_9

    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput v2, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v3, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v5, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v9, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v2, 0x0

    iput-boolean v2, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_a

    :cond_8
    move/from16 v23, v15

    :cond_9
    add-int/lit8 v5, v19, 0x2

    move-object/from16 v2, v20

    move/from16 v9, v21

    move/from16 v14, v22

    move/from16 v15, v23

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v20, v2

    move/from16 v21, v9

    move/from16 v22, v14

    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_b

    move-object v13, v14

    goto/16 :goto_14

    :cond_b
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v3

    sub-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v5

    sub-int/2addr v3, v5

    move v5, v13

    :goto_c
    if-gt v5, v12, :cond_14

    if-eq v5, v13, :cond_e

    if-eq v5, v12, :cond_d

    add-int/lit8 v9, v5, 0x1

    add-int v9, v9, v21

    aget v9, v4, v9

    add-int/lit8 v14, v5, -0x1

    add-int v14, v14, v21

    aget v14, v4, v14

    if-ge v9, v14, :cond_d

    goto :goto_d

    :cond_d
    add-int/lit8 v9, v5, -0x1

    add-int v9, v9, v21

    aget v9, v4, v9

    add-int/lit8 v14, v9, -0x1

    goto :goto_e

    :cond_e
    :goto_d
    add-int/lit8 v9, v5, 0x1

    add-int v9, v9, v21

    aget v9, v4, v9

    move v14, v9

    :goto_e
    iget v15, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move/from16 v16, v2

    iget v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v2, v14

    sub-int/2addr v2, v5

    sub-int/2addr v15, v2

    if-eqz v12, :cond_10

    if-eq v14, v9, :cond_f

    goto :goto_f

    :cond_f
    add-int/lit8 v2, v15, 0x1

    goto :goto_10

    :cond_10
    :goto_f
    move v2, v15

    :goto_10
    move/from16 v19, v3

    :goto_11
    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v14, v3, :cond_11

    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v15, v3, :cond_11

    add-int/lit8 v3, v14, -0x1

    move/from16 v23, v5

    add-int/lit8 v5, v15, -0x1

    invoke-virtual {v1, v3, v5}, Landroidx/recyclerview/widget/OpReorderer;->areItemsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v5, v23

    goto :goto_11

    :cond_11
    move/from16 v23, v5

    :cond_12
    add-int v5, v23, v21

    aput v14, v4, v5

    if-eqz v16, :cond_13

    sub-int v3, v19, v23

    if-lt v3, v13, :cond_13

    if-gt v3, v12, :cond_13

    add-int v3, v3, v21

    aget v3, v8, v3

    if-lt v3, v14, :cond_13

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v14, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v15, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v2, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_12

    :cond_13
    add-int/lit8 v5, v23, 0x2

    move/from16 v2, v16

    move/from16 v3, v19

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_15

    move-object v13, v3

    goto :goto_14

    :cond_15
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v20

    move/from16 v9, v21

    move/from16 v14, v22

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_16
    :goto_13
    move-object/from16 v20, v2

    move/from16 v21, v9

    const/4 v13, 0x0

    :goto_14
    if-eqz v13, :cond_1c

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v2

    if-lez v2, :cond_1a

    iget v2, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v3, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v2, v3

    iget v5, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v9, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v5, v9

    if-eq v2, v5, :cond_19

    iget-boolean v12, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v12, :cond_17

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v9, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_17
    if-le v2, v5, :cond_18

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v9, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_18
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v9, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_19
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v2, v9, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    :goto_15
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v18, 0x1

    goto :goto_16

    :cond_1b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_16
    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v3, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v3, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v2, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v2, v13, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1c
    const/16 v18, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    move/from16 v5, v18

    move-object/from16 v2, v20

    move/from16 v9, v21

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v20, v2

    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {v2, v1, v6, v8, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/OpReorderer;Ljava/util/ArrayList;[I[I)V

    move-object/from16 v1, v20

    check-cast v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$8;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    move-object/from16 v20, v2

    move v5, v3

    :goto_18
    iget v1, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$numSharedElements:I

    if-ge v3, v1, :cond_1e

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsIn:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsOut:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, v20

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

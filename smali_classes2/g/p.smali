.class public final Lg/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lg/p;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/p;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/p;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/p;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/p;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/p;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/RandomAccessFile;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    iget-object v2, v0, Lg/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lg/p;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x9

    sget-object v10, Lg/Z;->a:[F

    if-ge v6, v4, :cond_10

    sget-object v13, Lg/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v17

    aput v17, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v12, v10}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_1

    new-instance v11, Landroid/graphics/PointF;

    move/from16 v28, v4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v4

    move/from16 v20, v5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v5

    invoke-direct {v11, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v20

    move/from16 v4, v28

    goto :goto_2

    :cond_1
    move/from16 v28, v4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v4

    const/16 v5, 0x6d

    if-eq v4, v5, :cond_c

    const/16 v5, 0x73

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const/4 v8, 0x2

    int-to-long v8, v8

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x5

    invoke-static {v1, v4}, Lg/Z;->a(Ljava/io/RandomAccessFile;I)Lg/T;

    move-result-object v4

    iput v13, v4, Lg/b;->e:I

    move/from16 v36, v6

    goto/16 :goto_d

    :cond_2
    sget-object v4, Lg/e0;->r:Ljava/lang/String;

    sget-object v4, Lg/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v24

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v25

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v18

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v1

    move/from16 v20, v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v4

    move/from16 v22, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v5

    invoke-direct {v8, v11, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x9

    if-ge v1, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v4

    aput v4, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_a

    sget-object v11, Lg/e0;->r:Ljava/lang/String;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move/from16 v17, v4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move/from16 v36, v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v23

    move/from16 v26, v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    move-object/from16 v37, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v27, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_9

    move/from16 v38, v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v6

    move/from16 v39, v10

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    move-object/from16 v40, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v12

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_4

    move/from16 v29, v10

    new-instance v10, Landroid/graphics/PointF;

    move/from16 v30, v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v12

    move/from16 v42, v14

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v14

    invoke-direct {v10, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v30, 0x1

    move/from16 v10, v29

    move/from16 v14, v42

    goto :goto_6

    :cond_4
    move/from16 v42, v14

    new-instance v10, Lg/s;

    invoke-direct {v10, v6, v11}, Lg/s;-><init>(CLjava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x43

    if-eq v6, v10, :cond_8

    const/16 v10, 0x5a

    if-eq v6, v10, :cond_7

    const/16 v10, 0x4c

    if-eq v6, v10, :cond_6

    const/16 v10, 0x4d

    if-eq v6, v10, :cond_5

    sget-object v6, Lg/e0;->r:Ljava/lang/String;

    const-string v10, "deserializePathData encountered unknown path operator"

    invoke-static {v6, v10}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v29, v4

    goto/16 :goto_8

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v14, v29

    check-cast v14, Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v29, v4

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v32, v6

    move-object/from16 v6, v19

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v4, v11, Landroid/graphics/PointF;->y:F

    move/from16 v35, v4

    move/from16 v34, v6

    move/from16 v30, v10

    move/from16 v31, v12

    move/from16 v33, v14

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_8
    add-int/lit8 v10, v39, 0x1

    move-object/from16 v4, v29

    move/from16 v6, v38

    move-object/from16 v11, v40

    move-object/from16 v12, v41

    move/from16 v14, v42

    goto/16 :goto_5

    :cond_9
    move-object/from16 v29, v4

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move/from16 v42, v14

    new-instance v4, Lg/r;

    move-object/from16 v32, v9

    move/from16 v34, v23

    move/from16 v33, v26

    move-object/from16 v30, v29

    move-object/from16 v31, v40

    move-object/from16 v29, v4

    invoke-direct/range {v29 .. v34}, Lg/r;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v27, 0x1

    move/from16 v4, v17

    move/from16 v6, v36

    move-object/from16 v9, v37

    goto/16 :goto_4

    :cond_a
    move/from16 v36, v6

    move-object/from16 v37, v9

    move-object/from16 v41, v12

    move/from16 v42, v14

    new-instance v17, Lg/e0;

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-direct {v4, v6, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v26

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v27

    move-object/from16 v19, v4

    move-object/from16 v22, v6

    move-object/from16 v20, v41

    invoke-direct/range {v17 .. v27}, Lg/e0;-><init>(FLandroid/graphics/PointF;Landroid/graphics/Matrix;ILandroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;ZZLandroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V

    move-object/from16 v4, v17

    iput v13, v4, Lg/b;->e:I

    iget-object v6, v4, Lg/e0;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/r;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    iget-object v5, v4, Lg/e0;->p:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v4, Lg/e0;->o:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, v4, Lg/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    move/from16 v36, v6

    move-object/from16 v37, v9

    move-object/from16 v20, v12

    move/from16 v42, v14

    sget v1, Lg/T;->$r8$clinit:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v19

    move/from16 v25, v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v1, :cond_d

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_d
    new-instance v17, Lg/T;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    move-object/from16 v23, v4

    move-object/from16 v24, v20

    move-object/from16 v20, v1

    invoke-direct/range {v17 .. v25}, Lg/T;-><init>(IILandroidx/compose/runtime/ParcelableSnapshotMutableState;FFLjava/util/ArrayList;Landroid/graphics/Matrix;I)V

    move-object/from16 v4, v17

    iput v13, v4, Lg/b;->e:I

    iget-object v1, v4, Lg/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    :goto_d
    iget v1, v4, Lg/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v4, Lg/b;->e:I

    if-ge v7, v1, :cond_f

    move v7, v1

    :cond_f
    add-int/lit8 v6, v36, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v28

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/4 v4, 0x0

    :goto_e
    iget-object v5, v0, Lg/p;->a:Ljava/lang/String;

    if-ge v4, v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/b;

    if-eqz v6, :cond_11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    const-string v6, "deserialize annotData not found in idMap"

    invoke-static {v5, v6}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    sget-object v1, Lg/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v2, v7, :cond_13

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, v0, Lg/p;->e:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v2, v1, :cond_25

    sget-object v6, Lg/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    sget-object v8, Lg/f;->a:La/k;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v14, 0x1

    if-eq v9, v14, :cond_18

    const/4 v12, 0x2

    if-eq v9, v12, :cond_17

    if-eq v9, v11, :cond_16

    if-eq v9, v8, :cond_15

    const/4 v12, 0x5

    if-eq v9, v12, :cond_14

    sget-object v9, Lg/f;->b:Lg/f;

    goto :goto_11

    :cond_14
    sget-object v9, Lg/f;->g:Lg/f;

    goto :goto_11

    :cond_15
    sget-object v9, Lg/f;->f:Lg/f;

    goto :goto_11

    :cond_16
    sget-object v9, Lg/f;->e:Lg/f;

    goto :goto_11

    :cond_17
    sget-object v9, Lg/f;->d:Lg/f;

    goto :goto_11

    :cond_18
    sget-object v9, Lg/f;->c:Lg/f;

    :goto_11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/b;

    if-nez v7, :cond_19

    const-string v6, "AnnotOp"

    const-string v7, "deserialize annotDataId mismatch"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v15, 0x1

    goto/16 :goto_17

    :cond_19
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_22

    const/4 v14, 0x1

    if-eq v9, v14, :cond_21

    const/4 v12, 0x2

    if-eq v9, v12, :cond_20

    if-eq v9, v11, :cond_1e

    if-eq v9, v8, :cond_1c

    const/4 v8, 0x5

    if-ne v9, v8, :cond_1b

    const/4 v9, 0x0

    const/16 v11, 0x9

    :goto_12
    if-ge v9, v11, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v13

    aput v13, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1a
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setValues([F)V

    new-instance v13, Lg/n;

    invoke-direct {v13, v0, v7, v9}, Lg/n;-><init>(Lg/p;Lg/b;Landroid/graphics/Matrix;)V

    move-object v9, v13

    :goto_13
    const/4 v15, 0x1

    goto/16 :goto_16

    :cond_1b
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    const/4 v8, 0x5

    const/16 v11, 0x9

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    new-instance v14, Lg/j;

    sget-object v15, Lg/i;->a:La/k;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1d

    sget-object v13, Lg/i;->c:Lg/i;

    goto :goto_14

    :cond_1d
    sget-object v13, Lg/i;->b:Lg/i;

    :goto_14
    invoke-direct {v14, v0, v7, v9, v13}, Lg/j;-><init>(Lg/p;Lg/b;ZLg/i;)V

    move-object v9, v14

    goto :goto_13

    :cond_1e
    const/4 v8, 0x5

    const/16 v11, 0x9

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    new-instance v14, Lg/g;

    sget-object v15, Lg/i;->a:La/k;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1f

    sget-object v13, Lg/i;->c:Lg/i;

    goto :goto_15

    :cond_1f
    sget-object v13, Lg/i;->b:Lg/i;

    :goto_15
    invoke-direct {v14, v0, v7, v9, v13}, Lg/g;-><init>(Lg/p;Lg/b;ILg/i;)V

    move-object v9, v14

    goto :goto_16

    :cond_20
    const/4 v8, 0x5

    const/16 v11, 0x9

    const/4 v15, 0x1

    new-instance v9, Lg/l;

    invoke-direct {v9, v0, v7}, Lg/l;-><init>(Lg/p;Lg/b;)V

    goto :goto_16

    :cond_21
    move v15, v14

    const/4 v8, 0x5

    const/16 v11, 0x9

    const/4 v12, 0x2

    new-instance v9, Lg/k;

    invoke-direct {v9, v0, v7}, Lg/k;-><init>(Lg/p;Lg/b;)V

    goto :goto_16

    :cond_22
    const/4 v8, 0x5

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v15, 0x1

    new-instance v9, Lg/m;

    invoke-direct {v9, v0, v7}, Lg/m;-><init>(Lg/p;Lg/b;)V

    :goto_16
    iput v6, v9, Lg/o;->b:I

    move-object v6, v9

    :goto_17
    if-eqz v6, :cond_23

    iget-object v7, v0, Lg/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v6, Lg/o;->b:I

    if-ge v4, v6, :cond_24

    move v4, v6

    goto :goto_18

    :cond_23
    const-string v6, "deserialize failed to deserialize one AnnotOp"

    invoke-static {v5, v6}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_25
    sget-object v0, Lg/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v1, v4, :cond_26

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    return-void
.end method

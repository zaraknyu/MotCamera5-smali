.class public final Lh/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/h;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Le/J0;

.field public final d:Lh/d;

.field public final e:Lh/p;

.field public f:I

.field public g:J

.field public final h:[F

.field public final i:[F

.field public final j:[F

.field public final k:[F


# direct methods
.method public constructor <init>(Lh/q;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lc/h;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "randomUUID(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, La/y;->a:La/x;

    invoke-direct {v2, v3, v4}, Lc/h;-><init>(Ljava/lang/String;La/x;)V

    iput-object v2, v0, Lh/C;->a:Lc/h;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lh/C;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Le/J0;

    const-string v3, ""

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    new-instance v3, Lf/D;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v6}, Lf/D;-><init>(III)V

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v8

    invoke-static {v9}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    move-object v10, v9

    invoke-static {v10}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v9

    sget-object v11, Le/z;->a:Le/z;

    invoke-static {v11}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v11

    new-instance v12, Le/j;

    invoke-direct {v12}, Le/j;-><init>()V

    invoke-static {v12}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    sget-object v13, Le/g;->a:Le/g;

    invoke-static {v13}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v13

    move-object v14, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-static {v14}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v13

    move-object v15, v14

    invoke-static {v15}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v14

    move-object/from16 v16, v15

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v15

    move-object/from16 v17, v16

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v16

    new-instance v7, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v7, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    const/4 v6, 0x3

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v19

    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-direct {v6, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    move-object/from16 v22, v4

    new-instance v4, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-direct {v4, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v22

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v22

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v23

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v24

    sget-object v25, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v25

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v26

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v27

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v28

    move-object/from16 v20, v6

    const/4 v3, 0x3

    iget-object v6, v2, Lc/h;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct/range {v4 .. v28}, Le/J0;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V

    iput-object v4, v0, Lh/C;->c:Le/J0;

    new-instance v5, Lh/d;

    invoke-direct {v5}, Lh/d;-><init>()V

    iput-object v5, v0, Lh/C;->d:Lh/d;

    new-instance v5, Lh/p;

    invoke-direct {v5, v4, v2, v0}, Lh/p;-><init>(Le/J0;Lc/h;Lh/C;)V

    iput-object v5, v0, Lh/C;->e:Lh/p;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    iput-object v2, v0, Lh/C;->h:[F

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    iput-object v2, v0, Lh/C;->i:[F

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    iput-object v2, v0, Lh/C;->j:[F

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    iput-object v2, v0, Lh/C;->k:[F

    if-eqz v1, :cond_0

    iget-object v2, v1, Lh/q;->d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Lh/w;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v2, v5}, Lh/w;-><init>(Lh/q;Lh/C;Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v1, v3, v5, v4, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(F[F[F)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    :try_start_0
    aget v1, p1, v0

    aget v2, p2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    .line 196
    aget v3, p1, v2

    aget v4, p2, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x2

    .line 197
    aget p1, p1, v4

    aget p2, p2, v4

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float p2, p0, v1

    if-ltz p2, :cond_1

    cmpg-float p2, p0, v3

    if-ltz p2, :cond_1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    :cond_1
    return v2

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lc/X;ZLjava/io/File;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p5

    instance-of v1, v0, Lh/B;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lh/B;

    iget v2, v1, Lh/B;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lh/B;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lh/B;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lh/B;-><init>(Lh/C;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lh/B;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v3, v1, Lh/B;->i:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-boolean v3, v1, Lh/B;->f:Z

    iget-object v5, v1, Lh/B;->e:Lc/s1;

    iget-object v6, v1, Lh/B;->d:Ljava/util/Iterator;

    iget-object v7, v1, Lh/B;->c:Ljava/lang/String;

    iget-object v8, v1, Lh/B;->b:Ljava/io/File;

    iget-object v9, v1, Lh/B;->a:Lc/X;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 2
    iget-object v3, v0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 3
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v5, p4

    move-object v6, v1

    move-object v7, v3

    move/from16 v1, p2

    move-object/from16 v3, p3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/s1;

    if-eqz v1, :cond_4

    .line 5
    iget-object v9, v8, Lc/s1;->T:Lc/D0;

    .line 6
    iput-object v0, v6, Lh/B;->a:Lc/X;

    iput-object v3, v6, Lh/B;->b:Ljava/io/File;

    iput-object v5, v6, Lh/B;->c:Ljava/lang/String;

    iput-object v7, v6, Lh/B;->d:Ljava/util/Iterator;

    iput-object v8, v6, Lh/B;->e:Lc/s1;

    iput-boolean v1, v6, Lh/B;->f:Z

    iput v4, v6, Lh/B;->i:I

    .line 7
    invoke-virtual {v9, v4, v6}, Lc/D0;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_3

    return-object v2

    :cond_3
    move-object/from16 v27, v9

    move-object v9, v0

    move-object/from16 v0, v27

    move-object/from16 v27, v3

    move v3, v1

    move-object v1, v6

    move-object v6, v7

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v8, v27

    .line 8
    :goto_2
    check-cast v0, Lc/G;

    .line 9
    invoke-virtual {v0}, Lc/G;->d()Ljava/io/File;

    move-result-object v0

    move-object/from16 v27, v6

    move-object v6, v1

    move v1, v3

    move-object v3, v8

    move-object v8, v5

    move-object v5, v7

    move-object/from16 v7, v27

    goto :goto_3

    .line 10
    :cond_4
    iget-object v9, v8, Lc/s1;->h:Lc/G;

    .line 11
    invoke-virtual {v9}, Lc/G;->d()Ljava/io/File;

    move-result-object v9

    move-object/from16 v27, v9

    move-object v9, v0

    move-object/from16 v0, v27

    :goto_3
    if-eqz v0, :cond_36

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 13
    sget v11, Lorg/apache/commons/io/FileUtils;->$r8$clinit:I

    .line 14
    const-string v11, "destinationDir"

    .line 15
    invoke-static {v3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    const-string v12, "\'"

    if-eqz v11, :cond_6

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_4

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter \'destinationDir\' is not a directory: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    :goto_4
    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    sget-object v13, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    filled-new-array {v13}, [Ljava/nio/file/CopyOption;

    move-result-object v13

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_39

    .line 22
    const-string v14, "srcFile"

    invoke-static {v0, v14}, Lorg/apache/commons/io/FileUtils;->requireFile(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_38

    .line 25
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 26
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_5

    .line 27
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create directory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    :goto_5
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "destFile"

    invoke-static {v11, v14}, Lorg/apache/commons/io/FileUtils;->requireFile(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 30
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_6

    .line 31
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File parameter \'destFile is not writable: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_b
    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v12, v14, v13}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    const/4 v12, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    const-class v14, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v15, v12, [Ljava/nio/file/LinkOption;

    invoke-static {v13, v14, v15}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v13

    .line 34
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    const-class v15, Ljava/nio/file/attribute/BasicFileAttributeView;

    new-array v4, v12, [Ljava/nio/file/LinkOption;

    invoke-static {v14, v15, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v4

    check-cast v4, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 35
    invoke-interface {v13}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v14

    invoke-interface {v13}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v15

    invoke-interface {v13}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v13

    invoke-interface {v4, v14, v15, v13}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_7

    .line 36
    :catch_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_37

    if-eqz v1, :cond_36

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "page_"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".jpg"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    const-string v10, "fileName"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 41
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 42
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 43
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 44
    iget v4, v8, Lc/s1;->w:I

    .line 45
    iget v8, v9, Lc/X;->o:I

    add-int/2addr v8, v4

    .line 46
    rem-int/lit16 v8, v8, 0x168

    const/16 v4, 0x5a

    if-eq v8, v4, :cond_e

    const/16 v4, 0xb4

    if-eq v8, v4, :cond_d

    const/16 v4, 0x10e

    if-eq v8, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/16 v4, 0x8

    goto :goto_8

    :cond_d
    const/4 v4, 0x3

    goto :goto_8

    :cond_e
    const/4 v4, 0x6

    .line 47
    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    sget-boolean v14, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    move/from16 p2, v12

    .line 49
    const-string v12, "Orientation"

    const-string v15, "ExifInterface"

    if-eqz v4, :cond_10

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 50
    :try_start_1
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide v18, 0x40c3880000000000L    # 10000.0

    move/from16 v20, v1

    move-object/from16 p5, v2

    mul-double v1, v16, v18

    double-to-long v1, v1

    .line 51
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2710

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_1
    move/from16 v20, v1

    move-object/from16 p5, v2

    .line 52
    :catch_2
    const-string v1, "Invalid value for Orientation : "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move/from16 v2, p2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    const/4 v13, 0x1

    goto/16 :goto_20

    :cond_10
    move/from16 v20, v1

    move-object/from16 p5, v2

    :goto_9
    move/from16 v1, p2

    .line 53
    :goto_a
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 54
    iget-boolean v2, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v2, :cond_12

    :cond_11
    move/from16 v2, p2

    move/from16 v16, v1

    :goto_b
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    :goto_c
    move-object/from16 v22, v6

    :goto_d
    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    :goto_e
    const/4 v13, 0x1

    goto/16 :goto_1f

    .line 55
    :cond_12
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    if-eqz v2, :cond_11

    .line 56
    iget v11, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    move/from16 v16, v1

    .line 57
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    if-nez v4, :cond_13

    .line 58
    aget-object v1, v1, v16

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, p2

    goto :goto_b

    :cond_13
    move-object/from16 v17, v1

    .line 59
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    move-object/from16 v18, v3

    .line 60
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v19, v5

    const/4 v5, -0x1

    if-eq v2, v3, :cond_1a

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_14

    goto/16 :goto_12

    :cond_14
    if-eq v11, v5, :cond_15

    .line 61
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v11, v3, :cond_1b

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v11, v3, :cond_15

    goto/16 :goto_13

    :cond_15
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    goto/16 :goto_12

    :cond_16
    if-eqz v14, :cond_19

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Given tag (Orientation) value didn\'t match with one of expected formats: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", "

    move-object/from16 v17, v5

    const/4 v5, -0x1

    if-ne v11, v5, :cond_17

    move-object v5, v13

    goto :goto_f

    .line 65
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v17, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (guess: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v17, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, -0x1

    if-ne v5, v11, :cond_18

    move-object v1, v13

    goto :goto_10

    .line 67
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v17, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_11
    move/from16 v2, p2

    goto/16 :goto_c

    :cond_1a
    :goto_12
    move v11, v2

    .line 69
    :cond_1b
    :goto_13
    const-string v1, ","

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    if-eqz v14, :cond_19

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data format isn\'t one of expected formats: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :pswitch_1
    const/4 v11, -0x1

    .line 71
    invoke-virtual {v4, v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    array-length v2, v1

    new-array v3, v2, [D

    move/from16 v5, p2

    .line 73
    :goto_14
    array-length v11, v1

    if-ge v5, v11, :cond_1c

    .line 74
    aget-object v11, v1, v5

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    aput-wide v21, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 75
    :cond_1c
    aget-object v1, v17, v16

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v11, 0xc

    .line 76
    aget v17, v8, v11

    mul-int v11, v17, v2

    new-array v11, v11, [B

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 77
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v5, p2

    :goto_15
    if-ge v5, v2, :cond_1d

    move/from16 v17, v5

    move-object/from16 v22, v6

    .line 78
    aget-wide v5, v3, v17

    .line 79
    invoke-virtual {v11, v5, v6}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v6, v22

    goto :goto_15

    :cond_1d
    move-object/from16 v22, v6

    .line 80
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0xc

    invoke-direct {v3, v6, v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 81
    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, p2

    goto/16 :goto_d

    :pswitch_2
    move-object/from16 v22, v6

    const/4 v11, -0x1

    .line 82
    invoke-virtual {v4, v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    array-length v2, v1

    new-array v3, v2, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move/from16 v5, p2

    .line 84
    :goto_16
    array-length v6, v1

    if-ge v5, v6, :cond_1e

    .line 85
    aget-object v6, v1, v5

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v23, v6, p2

    move/from16 v24, v5

    move-object/from16 v25, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v23, 0x1

    aget-object v25, v25, v23

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    .line 87
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-direct {v11, v5, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v11, v3, v24

    add-int/lit8 v5, v24, 0x1

    move-object/from16 v7, v23

    move-object/from16 v8, v26

    const/4 v11, -0x1

    goto :goto_16

    :cond_1e
    move-object/from16 v23, v7

    move-object/from16 v26, v8

    .line 88
    aget-object v1, v17, v16

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v6, 0xa

    .line 89
    aget v7, v26, v6

    mul-int/2addr v7, v2

    new-array v7, v7, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 90
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v5, p2

    :goto_17
    if-ge v5, v2, :cond_1f

    .line 91
    aget-object v8, v3, v5

    move-object v11, v13

    move/from16 v24, v14

    .line 92
    iget-wide v13, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v13, v13

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    iget-wide v13, v8, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v8, v13

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    move-object v13, v11

    move/from16 v14, v24

    goto :goto_17

    :cond_1f
    move-object v11, v13

    move/from16 v24, v14

    .line 94
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v3, v6, v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 95
    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    move/from16 v2, p2

    goto/16 :goto_e

    :pswitch_3
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    const/4 v5, -0x1

    .line 96
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 97
    array-length v2, v1

    new-array v3, v2, [I

    move/from16 v5, p2

    .line 98
    :goto_19
    array-length v6, v1

    if-ge v5, v6, :cond_20

    .line 99
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 100
    :cond_20
    aget-object v1, v17, v16

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/16 v6, 0x9

    .line 101
    aget v7, v26, v6

    mul-int/2addr v7, v2

    new-array v7, v7, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 102
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v5, p2

    :goto_1a
    if-ge v5, v2, :cond_21

    .line 103
    aget v8, v3, v5

    .line 104
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 105
    :cond_21
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v3, v6, v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 106
    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :pswitch_4
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    const/4 v5, -0x1

    .line 107
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 108
    array-length v2, v1

    new-array v2, v2, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move/from16 v3, p2

    .line 109
    :goto_1b
    array-length v6, v1

    if-ge v3, v6, :cond_22

    .line 110
    aget-object v6, v1, v3

    invoke-virtual {v6, v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 111
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v7, v6, p2

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/4 v13, 0x1

    aget-object v6, v6, v13

    .line 112
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    invoke-direct {v5, v7, v8, v13, v14}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x1

    goto :goto_1b

    .line 113
    :cond_22
    aget-object v1, v17, v16

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 114
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :pswitch_5
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    const/4 v5, -0x1

    .line 116
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 117
    array-length v2, v1

    new-array v2, v2, [J

    move/from16 v3, p2

    .line 118
    :goto_1c
    array-length v5, v1

    if-ge v3, v5, :cond_23

    .line 119
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 120
    :cond_23
    aget-object v1, v17, v16

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 121
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :pswitch_6
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    const/4 v5, -0x1

    .line 123
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 124
    array-length v2, v1

    new-array v2, v2, [I

    move/from16 v3, p2

    .line 125
    :goto_1d
    array-length v5, v1

    if-ge v3, v5, :cond_24

    .line 126
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 127
    :cond_24
    aget-object v1, v17, v16

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 128
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :pswitch_7
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    .line 130
    aget-object v1, v17, v16

    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :pswitch_8
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v8

    move-object v11, v13

    move/from16 v24, v14

    .line 131
    aget-object v1, v17, v16

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_25

    move/from16 v2, p2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v3, v5, :cond_26

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x31

    if-gt v3, v6, :cond_26

    .line 133
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    new-array v5, v13, [B

    aput-byte v3, v5, v2

    .line 134
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    invoke-direct {v3, v13, v13, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_1e

    :cond_25
    move/from16 v2, p2

    .line 135
    :cond_26
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 136
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v6, v3

    invoke-direct {v5, v13, v6, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    move-object v3, v5

    .line 137
    :goto_1e
    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    add-int/lit8 v1, v16, 0x1

    move/from16 p2, v2

    move-object v13, v11

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v14, v24

    move-object/from16 v8, v26

    goto/16 :goto_a

    .line 138
    :goto_20
    const-string v1, "Failed to save new file. Original file is stored in "

    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/4 v6, 0x4

    if-eq v3, v6, :cond_28

    if-eq v3, v5, :cond_28

    if-ne v3, v4, :cond_27

    goto :goto_21

    .line 139
    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_28
    :goto_21
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v6, :cond_2a

    if-eqz v3, :cond_29

    goto :goto_22

    .line 141
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2a
    :goto_22
    iget-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v7, :cond_2c

    iget-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_2c

    iget-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v7, :cond_2b

    goto :goto_23

    .line 143
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2c
    :goto_23
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v8, 0x0

    const/4 v10, 0x6

    if-eq v7, v10, :cond_2e

    const/4 v10, 0x7

    if-ne v7, v10, :cond_2d

    goto :goto_24

    :cond_2d
    move-object v7, v8

    goto :goto_25

    .line 145
    :cond_2e
    :goto_24
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v7

    .line 146
    :goto_25
    iput-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 147
    :try_start_3
    const-string v7, "temp"

    const-string v10, "tmp"

    invoke-static {v7, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_2f

    .line 148
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :catchall_0
    move-exception v0

    move-object v14, v8

    goto/16 :goto_35

    :catch_3
    move-exception v0

    move-object v14, v8

    goto/16 :goto_34

    .line 149
    :cond_2f
    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v10, v11, v12}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 150
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :goto_26
    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 152
    :try_start_5
    invoke-static {v12, v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 153
    invoke-static {v12}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    :try_start_6
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v3, :cond_30

    .line 156
    :try_start_7
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_28

    :catchall_1
    move-exception v0

    move v12, v2

    move-object v2, v8

    goto/16 :goto_31

    :catch_4
    move-exception v0

    move-object v2, v8

    move-object v14, v2

    move-object v15, v14

    :goto_27
    move-object v8, v12

    goto :goto_2c

    .line 157
    :cond_30
    :try_start_8
    sget v14, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 158
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 159
    :goto_28
    :try_start_9
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 160
    :try_start_a
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 161
    :try_start_b
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v10, 0x4

    if-ne v13, v10, :cond_31

    .line 162
    invoke-virtual {v0, v15, v2}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto :goto_2b

    :catchall_2
    move-exception v0

    :goto_29
    move-object v8, v15

    :goto_2a
    const/4 v12, 0x0

    goto/16 :goto_31

    :catch_5
    move-exception v0

    goto :goto_27

    :cond_31
    if-ne v13, v5, :cond_32

    .line 163
    invoke-virtual {v0, v15, v2}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto :goto_2b

    :cond_32
    if-ne v13, v4, :cond_33

    .line 164
    invoke-virtual {v0, v15, v2}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 165
    :cond_33
    :goto_2b
    invoke-static {v15}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 168
    iput-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    goto/16 :goto_36

    :catchall_3
    move-exception v0

    move-object v2, v8

    goto :goto_29

    :catch_6
    move-exception v0

    move-object v2, v8

    goto :goto_27

    :catchall_4
    move-exception v0

    move-object v2, v8

    goto :goto_2a

    :catch_7
    move-exception v0

    move-object v2, v8

    move-object v15, v2

    goto :goto_27

    :catch_8
    move-exception v0

    move-object v2, v8

    move-object v14, v2

    move-object v15, v14

    .line 169
    :goto_2c
    :try_start_c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-nez v3, :cond_34

    .line 170
    :try_start_d
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9, v3}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 171
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v14, v3

    goto :goto_2e

    :catchall_5
    move-exception v0

    move-object v8, v4

    :goto_2d
    const/4 v4, 0x0

    goto :goto_30

    :catch_9
    move-exception v0

    move-object v8, v4

    goto :goto_2f

    .line 172
    :cond_34
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v14, v5

    .line 173
    :goto_2e
    invoke-static {v4, v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 174
    :try_start_e
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed to save new file"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_6
    move-exception v0

    goto :goto_2d

    :catch_a
    move-exception v0

    .line 177
    :goto_2f
    :try_start_f
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    const/4 v4, 0x1

    .line 179
    :goto_30
    :try_start_10
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move v12, v4

    move-object v8, v15

    .line 182
    :goto_31
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-nez v12, :cond_35

    .line 184
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 185
    :cond_35
    throw v0

    :catchall_9
    move-exception v0

    :goto_32
    move-object v8, v12

    goto :goto_35

    :catch_b
    move-exception v0

    :goto_33
    move-object v8, v12

    goto :goto_34

    :catchall_a
    move-exception v0

    move-object v14, v8

    goto :goto_32

    :catch_c
    move-exception v0

    move-object v14, v8

    goto :goto_33

    .line 186
    :goto_34
    :try_start_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to copy original file to temp file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_b
    move-exception v0

    .line 187
    :goto_35
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v14}, Landroidx/exifinterface/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    throw v0

    :cond_36
    move/from16 v20, v1

    move-object/from16 p5, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_36

    .line 190
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot set the file time."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File canonical paths are equal: \'%s\' (file1=\'%s\', file2=\'%s\')"

    filled-new-array {v14, v0, v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 192
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_39
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File system element for parameter \'source\' does not exist: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_36
    move-object/from16 v2, p5

    move-object v0, v9

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v1, v20

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 194
    :cond_3a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCurrentPageIndex()I
    .locals 0

    iget-object p0, p0, Lh/C;->c:Le/J0;

    iget-object p0, p0, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/D;

    iget p0, p0, Lf/D;->a:I

    return p0
.end method

.method public final getPage(I)Lh/F;
    .locals 1

    iget-object v0, p0, Lh/C;->a:Lc/h;

    iget-object v0, v0, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/X;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lh/C;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/F;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPageCount()I
    .locals 0

    iget-object p0, p0, Lh/C;->c:Le/J0;

    iget-object p0, p0, Le/J0;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

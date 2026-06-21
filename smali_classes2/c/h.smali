.class public final Lc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lc/e;

.field public static final k:Ljava/util/HashMap;

.field public static final l:Lkotlin/jvm/functions/Function1;

.field public static final m:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final n:Lkotlinx/coroutines/channels/BufferedChannel;


# instance fields
.field public final a:La/x;

.field public final b:J

.field public final c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final e:Ljava/util/HashMap;

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Lc/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/h;->j:Lc/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/h;->k:Ljava/util/HashMap;

    new-instance v0, Lc/a$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lc/h;->l:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lc/h;->m:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const v2, 0x7fffffff

    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    sput-object v0, Lc/h;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/x;)V
    .locals 2

    const-string v0, "scanConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string v0, "fromString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/h;->a:La/x;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/h;->b:J

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object p2, p0, Lc/h;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lc/h;->e:Ljava/util/HashMap;

    sget-object p2, Lc/h;->k:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/h;->h:Z

    new-instance p2, Lc/u;

    invoke-direct {p2, p0}, Lc/u;-><init>(Lc/h;)V

    iput-object p2, p0, Lc/h;->i:Lc/u;

    new-instance p2, Lc/s;

    invoke-direct {p2}, Lc/s;-><init>()V

    invoke-virtual {p0, p2}, Lc/h;->a(Lc/s;)V

    iput-boolean p1, p0, Lc/h;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lc/X;ZI)V
    .locals 5

    .line 228
    iget v0, p0, Lc/h;->f:I

    if-lez v0, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    iget-object v0, p0, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p3, :cond_1

    if-gt p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    iget-object v2, p0, Lc/h;->e:Ljava/util/HashMap;

    if-ne v1, p3, :cond_2

    .line 231
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 232
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 235
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 236
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 237
    invoke-static {v1, p3}, Lkotlin/collections/CollectionsKt;->take(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 240
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_3

    .line 241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 242
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 243
    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 244
    :cond_3
    :goto_2
    iput-object p0, p1, Lc/X;->d:Lc/h;

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 245
    invoke-static {p0, p1, p2}, Lc/e;->a(Lc/h;ZZ)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(Lc/s;)V
    .locals 34

    move-object/from16 v5, p0

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lc/s;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto/16 :goto_20

    .line 2
    :cond_0
    iget-object v7, v0, Lc/s;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_3a

    iget-object v12, v5, Lc/h;->a:La/x;

    if-eqz v12, :cond_38

    .line 4
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Lorg/json/JSONObject;

    .line 5
    const-string v0, "images"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x64

    const-string v3, "couldn\'t create page from metadata"

    const-string v6, ":"

    const/16 p1, 0x3

    if-eqz v14, :cond_1

    .line 6
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-nez v16, :cond_2

    :cond_1
    move-object v4, v6

    move-object/from16 v30, v7

    move/from16 v17, v8

    move/from16 v19, v10

    move-object/from16 v23, v13

    const/16 v26, 0x2

    move-object v13, v3

    goto/16 :goto_18

    .line 7
    :cond_2
    invoke-static {v13}, La/l;->e(Lorg/json/JSONObject;)Lc/z1;

    move-result-object v11

    .line 8
    sget-object v0, Lc/X;->H:Ljava/lang/String;

    .line 9
    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float v18, v0, v1

    .line 10
    sget-object v0, Lc/X;->M:Ljava/lang/String;

    .line 11
    invoke-virtual {v13, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    invoke-static {v13}, La/l;->c(Lorg/json/JSONObject;)I

    move-result v2

    .line 13
    sget-object v4, Lc/X;->J:Ljava/lang/String;

    .line 14
    invoke-virtual {v13, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v20, 0x1

    .line 15
    sget-object v15, Lc/X;->K:Ljava/lang/String;

    .line 16
    invoke-virtual {v13, v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 17
    sget-object v9, Lc/X;->F:Ljava/lang/String;

    .line 18
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_1
    move-object/from16 v22, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 19
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v23, v1

    .line 20
    sget-object v1, Lc/X;->z:Ljava/lang/String;

    .line 21
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    .line 22
    sget-object v1, Lc/X;->B:Ljava/lang/String;

    .line 23
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    if-lez v3, :cond_12

    move/from16 v26, v2

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, La/l;->d(Lorg/json/JSONObject;)Lc/N;

    move-result-object v1

    move/from16 v27, v3

    .line 26
    sget-object v3, Lc/X;->x:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v28, v4

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    sget-object v4, Lc/X;->C:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_9

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v1

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_4

    move v2, v0

    .line 34
    new-instance v0, Lc/X;

    .line 35
    invoke-static {v13}, La/l;->a(Lorg/json/JSONObject;)Lc/J;

    move-result-object v4

    const/4 v3, 0x0

    move-object/from16 v29, v6

    const/16 v6, 0x18

    move-object/from16 v30, v7

    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v7, v23

    move/from16 v8, v26

    move/from16 v10, v28

    move-object/from16 v31, v29

    const/16 v26, 0x2

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v12

    move/from16 v12, v27

    move-object/from16 v27, v9

    const/4 v9, -0x1

    .line 36
    invoke-direct/range {v0 .. v6}, Lc/X;-><init>(Ljava/io/File;IZLc/J;Lc/h;I)V

    move-object v1, v5

    goto :goto_4

    :cond_4
    move-object v0, v2

    move-object v1, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v7, v23

    move/from16 v8, v26

    move/from16 v10, v28

    const/16 v26, 0x2

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v12

    move/from16 v12, v27

    move-object/from16 v27, v9

    const/4 v9, -0x1

    .line 37
    sget-object v2, Lc/N;->a:Lc/N;

    if-ne v4, v2, :cond_6

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    invoke-static {v0, v1}, La/l;->a(Landroid/net/Uri;Lc/h;)Lc/X;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 41
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    invoke-static {v0, v1}, La/l;->a(Landroid/net/Uri;Lc/h;)Lc/X;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {v0, v7}, Lc/X;->d(I)V

    :cond_8
    move-object v2, v0

    goto :goto_5

    :cond_9
    move-object v1, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move/from16 v17, v8

    move/from16 v19, v10

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    move/from16 v8, v26

    move/from16 v10, v28

    const/16 v26, 0x2

    move-object/from16 v22, v12

    move/from16 v12, v27

    move-object/from16 v27, v9

    const/4 v9, -0x1

    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_13

    iget-object v7, v2, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_13

    .line 44
    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "getJSONObject(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean v5, v2, Lc/X;->n:Z

    .line 46
    iget-object v6, v2, Lc/X;->m:Lc/J;

    .line 47
    sget-object v4, Lc/X;->x:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    sget-object v9, Lc/X;->y:Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v29, v0

    .line 51
    sget-object v0, Lc/X;->A:Ljava/lang/String;

    .line 52
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    .line 53
    sget-object v0, Lc/X;->M:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v4, :cond_a

    .line 55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v3

    move v3, v0

    .line 58
    new-instance v0, Lc/s1;

    move-object/from16 v33, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v33

    move-object/from16 v33, v32

    move/from16 v32, v12

    move-object/from16 v12, v33

    .line 59
    invoke-direct/range {v0 .. v6}, Lc/s1;-><init>(Ljava/io/File;Lc/X;ILa/x;ZLc/J;)V

    goto :goto_7

    :cond_a
    move-object/from16 v4, v32

    move/from16 v32, v12

    move-object v12, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v3

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_11

    .line 60
    invoke-static/range {v22 .. v22}, La/l;->b(Lorg/json/JSONObject;)Lc/a;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 61
    iget-object v3, v0, Lc/s1;->D:Lc/k1;

    sget-object v5, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/16 v21, 0x0

    aget-object v5, v5, v21

    invoke-virtual {v3, v1, v5}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :cond_b
    const/4 v1, -0x1

    if-eq v8, v1, :cond_c

    .line 62
    iget-object v1, v0, Lc/s1;->H:Lc/k1;

    sget-object v3, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v3, v3, v20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 63
    :cond_c
    iget-object v1, v0, Lc/s1;->S:Ljava/lang/String;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 64
    iget-object v1, v0, Lc/s1;->g:Lc/E0;

    invoke-virtual {v1, v12}, Lc/E0;->a(Ljava/lang/String;)V

    .line 65
    :cond_d
    iput-object v12, v0, Lc/s1;->S:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v9}, Lc/s1;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lc/s1;->d()I

    move-result v1

    if-eq v1, v10, :cond_e

    .line 68
    iget-object v1, v0, Lc/s1;->I:Lc/k1;

    sget-object v3, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v3, v3, v26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 69
    :cond_e
    invoke-virtual {v0}, Lc/s1;->f()I

    move-result v1

    if-eq v1, v15, :cond_f

    .line 70
    iget-object v1, v0, Lc/s1;->J:Lc/k1;

    sget-object v3, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v3, v3, p1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :cond_f
    if-nez v29, :cond_10

    .line 71
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 74
    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v0, v29, 0x1

    const/4 v9, -0x1

    move-object/from16 v1, p0

    move-object/from16 v22, v4

    move/from16 v12, v32

    goto/16 :goto_6

    .line 77
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move/from16 v17, v8

    move-object/from16 v27, v9

    move/from16 v19, v10

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    const/16 v26, 0x2

    move v8, v2

    move v10, v4

    const/4 v2, 0x0

    :cond_13
    if-eqz v2, :cond_28

    iget-object v0, v2, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, v2, Lc/X;->i:Ljava/util/ArrayList;

    iget-object v3, v2, Lc/X;->b:Lc/M;

    .line 78
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lc/X;->a(Lc/z1;Ljava/lang/Float;)V

    .line 79
    invoke-virtual {v2, v8}, Lc/X;->c(I)V

    .line 80
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_14

    .line 81
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_a

    .line 82
    :cond_14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/s1;

    .line 83
    invoke-virtual {v5}, Lc/s1;->d()I

    move-result v5

    if-eq v5, v10, :cond_15

    .line 84
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 85
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/s1;

    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    .line 87
    :cond_16
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 88
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/s1;

    .line 89
    iget-object v5, v5, Lc/s1;->I:Lc/k1;

    .line 90
    sget-object v6, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v6, v6, v26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    goto :goto_b

    .line 91
    :cond_17
    iget-object v4, v3, Lc/M;->b:Ljava/lang/String;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v31

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    iput-object v5, v3, Lc/M;->A:Ljava/lang/String;

    .line 94
    iget-object v5, v2, Lc/X;->d:Lc/h;

    const/4 v6, 0x4

    move/from16 v7, v20

    invoke-static {v5, v7, v6}, Lc/e;->a(Lc/h;ZI)V

    .line 95
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_18

    .line 96
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_d

    .line 97
    :cond_18
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/s1;

    .line 98
    invoke-virtual {v7}, Lc/s1;->f()I

    move-result v7

    if-eq v7, v15, :cond_19

    .line 99
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 100
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/s1;

    .line 101
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    .line 102
    :cond_1a
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/s1;

    .line 104
    iget-object v5, v5, Lc/s1;->J:Lc/k1;

    .line 105
    sget-object v7, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v7, v7, p1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    goto :goto_e

    .line 106
    :cond_1b
    iget-object v0, v3, Lc/M;->c:Ljava/lang/String;

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-object v0, v3, Lc/M;->B:Ljava/lang/String;

    .line 109
    iget-object v0, v2, Lc/X;->d:Lc/h;

    const/4 v7, 0x1

    invoke-static {v0, v7, v6}, Lc/e;->a(Lc/h;ZI)V

    move-object/from16 v9, v27

    .line 110
    invoke-virtual {v2, v9}, Lc/X;->a(Ljava/lang/Boolean;)V

    const/4 v5, 0x0

    .line 111
    iput-boolean v5, v2, Lc/X;->e:Z

    .line 112
    iget-object v0, v2, Lc/X;->k:Ljava/lang/String;

    move-object/from16 v5, v25

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz v5, :cond_1d

    .line 113
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object v0, v5

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1d

    .line 114
    iget-object v6, v3, Lc/M;->u:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    .line 115
    :goto_10
    iput-object v0, v3, Lc/M;->F:Ljava/lang/String;

    .line 116
    :cond_1e
    iput-object v5, v2, Lc/X;->k:Ljava/lang/String;

    .line 117
    iget-object v0, v2, Lc/X;->j:Ljava/lang/String;

    move-object/from16 v5, v24

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz v5, :cond_20

    .line 118
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    move-object v0, v5

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_20

    .line 119
    iget-object v6, v3, Lc/M;->t:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    .line 120
    :goto_12
    iput-object v0, v3, Lc/M;->E:Ljava/lang/String;

    .line 121
    :cond_21
    iput-object v5, v2, Lc/X;->j:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    sget-object v0, Lg/q;->a:Ljava/lang/String;

    .line 125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "toLowerCase(...)"

    if-nez v0, :cond_24

    .line 126
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ".ops"

    const/4 v6, 0x0

    .line 127
    invoke-static {v0, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_24

    .line 128
    new-instance v3, Lg/p;

    invoke-direct {v3}, Lg/p;-><init>()V

    .line 129
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 130
    new-instance v0, Ljava/io/File;

    const-string v4, "annotOp"

    invoke-static {v4}, La/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_23

    .line 131
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    invoke-virtual {v3, v4}, Lg/p;->a(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_15

    :catch_0
    move-exception v0

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 134
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :goto_14
    sget-object v4, Lg/q;->a:Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 136
    const-string v5, "deserializeAnnotOpManager failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_23
    :goto_15
    iget-object v0, v3, Lg/p;->c:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 139
    :cond_24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".marks"

    const/4 v4, 0x0

    .line 141
    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_25

    .line 142
    invoke-static {v5}, Lg/Z;->a(Ljava/lang/String;)Lg/U;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 143
    iget-object v0, v0, Lg/U;->a:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_25
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/b;

    const/4 v3, 0x0

    .line 146
    iput-object v3, v1, Lg/b;->g:Lg/c;

    goto :goto_17

    .line 147
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 148
    iget-object v3, v2, Lc/X;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v7, v23

    goto/16 :goto_1d

    .line 150
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :goto_18
    invoke-static/range {v23 .. v23}, La/l;->d(Lorg/json/JSONObject;)Lc/N;

    move-result-object v0

    .line 152
    sget-object v3, Lc/X;->x:Ljava/lang/String;

    move-object/from16 v7, v23

    .line 153
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    sget-object v5, Lc/X;->C:Ljava/lang/String;

    .line 155
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    sget-object v6, Lc/X;->y:Ljava/lang/String;

    .line 157
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    sget-object v6, Lc/X;->A:Ljava/lang/String;

    .line 159
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    sget-object v6, Lc/X;->M:Ljava/lang/String;

    const/4 v10, 0x0

    .line 161
    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 162
    invoke-static {v7}, La/l;->e(Lorg/json/JSONObject;)Lc/z1;

    move-result-object v10

    .line 163
    sget-object v11, Lc/X;->H:Ljava/lang/String;

    .line 164
    invoke-virtual {v7, v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float v11, v2, v1

    if-eqz v3, :cond_30

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 168
    new-instance v0, Lc/X;

    const/4 v4, 0x0

    move v2, v6

    const/16 v6, 0x38

    const/4 v3, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lc/X;-><init>(Ljava/io/File;IZLc/J;Lc/h;I)V

    move-object v1, v5

    move-object v3, v0

    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_1b

    :cond_2a
    move-object/from16 v1, p0

    move v2, v6

    .line 169
    sget-object v6, Lc/N;->a:Lc/N;

    if-ne v0, v6, :cond_2f

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 171
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    invoke-static {v0, v1}, La/l;->a(Landroid/net/Uri;Lc/h;)Lc/X;

    move-result-object v0

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_2c

    .line 173
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-static {v0, v1}, La/l;->a(Landroid/net/Uri;Lc/h;)Lc/X;

    move-result-object v0

    :cond_2c
    move-object v3, v0

    if-eqz v3, :cond_29

    .line 175
    iget-object v0, v3, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 176
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_29

    const/4 v5, 0x0

    .line 177
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/s1;

    if-eqz v0, :cond_29

    .line 178
    iget v5, v0, Lc/s1;->w:I

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_2d

    const/16 v6, 0xb4

    if-eq v2, v6, :cond_2d

    const/16 v6, 0x10e

    if-eq v2, v6, :cond_2d

    const/4 v2, 0x0

    .line 179
    :cond_2d
    iput v2, v0, Lc/s1;->w:I

    .line 180
    iget-object v6, v0, Lc/s1;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 181
    iget-object v2, v0, Lc/s1;->g:Lc/E0;

    .line 182
    iget-object v6, v2, Lc/E0;->d:Ljava/lang/String;

    .line 183
    iget v12, v0, Lc/s1;->w:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    iput-object v4, v2, Lc/E0;->n:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v5, v2, :cond_29

    .line 185
    iget-object v2, v0, Lc/s1;->a:Lc/X;

    .line 186
    iget-object v2, v2, Lc/X;->d:Lc/h;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-static {v2, v4, v5}, Lc/e;->a(Lc/h;ZZ)V

    .line 188
    iget-object v2, v0, Lc/s1;->c0:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    .line 189
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 190
    :cond_2e
    sget-object v2, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 191
    new-instance v6, Lc/T0;

    invoke-direct {v6, v0, v4, v5}, Lc/T0;-><init>(Lc/s1;Lkotlin/coroutines/Continuation;I)V

    sget-object v5, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move/from16 v12, v26

    invoke-static {v5, v2, v4, v6, v12}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v2

    iput-object v2, v0, Lc/s1;->c0:Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1b

    :cond_2f
    const/4 v4, 0x0

    goto :goto_1a

    :cond_30
    const/4 v4, 0x0

    move-object/from16 v1, p0

    :goto_1a
    move-object v3, v4

    :goto_1b
    if-eqz v3, :cond_37

    .line 192
    iget-object v0, v3, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 193
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lc/X;->a(Lc/z1;Ljava/lang/Float;)V

    .line 194
    invoke-static {v7}, La/l;->b(Lorg/json/JSONObject;)Lc/a;

    move-result-object v2

    .line 195
    invoke-static {v7}, La/l;->c(Lorg/json/JSONObject;)I

    move-result v5

    .line 196
    sget-object v6, Lc/X;->J:Ljava/lang/String;

    const/4 v10, 0x0

    .line 197
    invoke-virtual {v7, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 198
    sget-object v11, Lc/X;->K:Ljava/lang/String;

    .line 199
    invoke-virtual {v7, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 200
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 201
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc/s1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_31

    .line 202
    iget-object v13, v12, Lc/s1;->D:Lc/k1;

    sget-object v14, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v14, v14, v10

    invoke-virtual {v13, v2, v14}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :cond_31
    const/4 v2, -0x1

    if-eq v5, v2, :cond_32

    .line 203
    iget-object v2, v12, Lc/s1;->H:Lc/k1;

    sget-object v10, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/16 v20, 0x1

    aget-object v10, v10, v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v10}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 204
    :cond_32
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x0

    .line 205
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/s1;

    .line 206
    invoke-virtual {v2}, Lc/s1;->d()I

    move-result v5

    if-eq v5, v6, :cond_33

    .line 207
    iget-object v5, v2, Lc/s1;->I:Lc/k1;

    sget-object v10, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/16 v26, 0x2

    aget-object v10, v10, v26

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 208
    :cond_33
    invoke-virtual {v2}, Lc/s1;->f()I

    move-result v5

    if-eq v5, v11, :cond_34

    .line 209
    iget-object v2, v2, Lc/s1;->J:Lc/k1;

    sget-object v5, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v5, v5, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 210
    :cond_34
    invoke-static {v7}, La/l;->a(Lorg/json/JSONObject;)Lc/J;

    move-result-object v2

    invoke-virtual {v3, v2}, Lc/X;->a(Lc/J;)V

    .line 211
    sget-object v2, Lc/X;->F:Ljava/lang/String;

    .line 212
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_1c

    :cond_35
    move-object v11, v4

    .line 213
    :goto_1c
    invoke-virtual {v3, v11}, Lc/X;->a(Ljava/lang/Boolean;)V

    const/4 v5, 0x0

    .line 214
    iput-boolean v5, v3, Lc/X;->e:Z

    .line 215
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 216
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/s1;

    .line 217
    iget-object v4, v2, Lc/s1;->S:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 218
    iget-object v4, v2, Lc/s1;->g:Lc/E0;

    invoke-virtual {v4, v9}, Lc/E0;->a(Ljava/lang/String;)V

    .line 219
    :cond_36
    iput-object v9, v2, Lc/s1;->S:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 221
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/s1;

    invoke-virtual {v0, v8}, Lc/s1;->a(Ljava/lang/String;)V

    move-object v11, v3

    .line 222
    :goto_1d
    sget-object v0, Lc/X;->E:Ljava/lang/String;

    .line 223
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Form"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 224
    iput-boolean v0, v11, Lc/X;->l:Z

    goto :goto_1e

    .line 225
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object v1, v5

    move-object/from16 v30, v7

    move/from16 v17, v8

    move/from16 v19, v10

    const/4 v4, 0x0

    move-object v11, v4

    :goto_1e
    if-eqz v11, :cond_39

    const v0, 0x7fffffff

    const/4 v5, 0x0

    .line 226
    invoke-virtual {v1, v11, v5, v0}, Lc/h;->a(Lc/X;ZI)V

    goto :goto_1f

    :cond_39
    const/4 v5, 0x0

    .line 227
    :goto_1f
    sget-object v0, Lc/h;->l:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lc/a$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lc/a$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v19, 0x1

    move v9, v5

    move/from16 v8, v17

    move-object/from16 v7, v30

    move-object v5, v1

    goto/16 :goto_0

    :cond_3a
    :goto_20
    return-void
.end method

.method public final c()Lf/D;
    .locals 3

    iget-object p0, p0, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/X;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    new-instance v2, Lf/D;

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    invoke-direct {v2, v0, v1}, Lf/D;-><init>(II)V

    return-object v2
.end method

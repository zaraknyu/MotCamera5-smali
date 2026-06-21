.class public final Lc/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field public static final U:Ljava/lang/String;

.field public static final V:Ljava/lang/String;

.field public static final W:Ljava/lang/String;

.field public static final X:Ljava/lang/String;

.field public static final Y:Ljava/lang/String;

.field public static final a0:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:Lc/M;

.field public final c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public d:Lc/h;

.field public e:Z

.field public f:Ljava/lang/Boolean;

.field public final g:Lkotlin/SynchronizedLazyImpl;

.field public final h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final i:Ljava/util/ArrayList;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Lc/J;

.field public final n:Z

.field public o:I

.field public final p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public r:Lc/z1;

.field public final s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public t:F

.field public final u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/X;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "file_dir"

    sput-object v0, Lc/X;->w:Ljava/lang/String;

    const-string v0, "path"

    sput-object v0, Lc/X;->x:Ljava/lang/String;

    const-string v0, "eraser_filename"

    sput-object v0, Lc/X;->y:Ljava/lang/String;

    const-string v0, "markup_filename"

    sput-object v0, Lc/X;->z:Ljava/lang/String;

    const-string v0, "active_eraser_filename"

    sput-object v0, Lc/X;->A:Ljava/lang/String;

    const-string v0, "active_markup_filename"

    sput-object v0, Lc/X;->B:Ljava/lang/String;

    const-string v0, "uri"

    sput-object v0, Lc/X;->C:Ljava/lang/String;

    const-string v0, "path_type"

    sput-object v0, Lc/X;->D:Ljava/lang/String;

    const-string v0, "capture_mode"

    sput-object v0, Lc/X;->E:Ljava/lang/String;

    const-string v0, "first_image_landscape"

    sput-object v0, Lc/X;->F:Ljava/lang/String;

    const-string v0, "page_type"

    sput-object v0, Lc/X;->G:Ljava/lang/String;

    const-string v0, "page_scale"

    sput-object v0, Lc/X;->H:Ljava/lang/String;

    const-string v0, "filter"

    sput-object v0, Lc/X;->I:Ljava/lang/String;

    const-string v0, "brightness"

    sput-object v0, Lc/X;->J:Ljava/lang/String;

    const-string v0, "contrast"

    sput-object v0, Lc/X;->K:Ljava/lang/String;

    const-string v0, "crop_points"

    sput-object v0, Lc/X;->L:Ljava/lang/String;

    const-string v0, "rotation"

    sput-object v0, Lc/X;->M:Ljava/lang/String;

    const-string v0, "auto"

    sput-object v0, Lc/X;->N:Ljava/lang/String;

    const-string v0, "content_uri"

    sput-object v0, Lc/X;->O:Ljava/lang/String;

    const-string v0, "grayscale"

    sput-object v0, Lc/X;->P:Ljava/lang/String;

    const-string v0, "invalid"

    sput-object v0, Lc/X;->Q:Ljava/lang/String;

    const-string v0, "original"

    sput-object v0, Lc/X;->R:Ljava/lang/String;

    const-string v0, "whiteboard"

    sput-object v0, Lc/X;->S:Ljava/lang/String;

    const-string v1, "lighttext"

    sput-object v1, Lc/X;->T:Ljava/lang/String;

    const-string v1, "document"

    sput-object v1, Lc/X;->U:Ljava/lang/String;

    const-string v1, "business_card"

    sput-object v1, Lc/X;->V:Ljava/lang/String;

    sput-object v0, Lc/X;->W:Ljava/lang/String;

    const-string v0, "id_card"

    sput-object v0, Lc/X;->X:Ljava/lang/String;

    const-string v0, "book"

    sput-object v0, Lc/X;->Y:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lc/X;->a0:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/net/Uri;Lc/h;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0x18

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    .line 31
    invoke-direct/range {v0 .. v6}, Lc/X;-><init>(Ljava/io/File;IZLc/J;Lc/h;I)V

    if-eqz p3, :cond_0

    .line 32
    iget-object p0, v0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/s1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object p1, Lc/N;->a:Lc/N;

    .line 36
    iget-object p1, p0, Lc/s1;->g:Lc/E0;

    .line 37
    iget-object p2, p1, Lc/E0;->c:Ljava/lang/String;

    .line 38
    iget-object p4, p1, Lc/E0;->h:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 40
    const-string v0, "<set-?>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p4, p1, Lc/E0;->i:Ljava/lang/String;

    .line 42
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lc/s1;->B:Ljava/lang/String;

    .line 43
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 44
    iget-object p3, p1, Lc/E0;->b:Ljava/lang/String;

    .line 45
    iget-object p0, p0, Lc/s1;->B:Ljava/lang/String;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    iput-object p0, p1, Lc/E0;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZLc/J;Lc/h;I)V
    .locals 7

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p6, Lc/X;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p6

    iput p6, p0, Lc/X;->a:I

    .line 3
    new-instance p6, Lc/M;

    invoke-direct {p6}, Lc/M;-><init>()V

    iput-object p6, p0, Lc/X;->b:Lc/M;

    .line 4
    sget-object p6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p6}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p6

    iput-object p6, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/X;->e:Z

    .line 6
    new-instance v1, Lc/X$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lc/X$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v1

    iput-object v1, p0, Lc/X;->g:Lkotlin/SynchronizedLazyImpl;

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lc/X;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/X;->i:Ljava/util/ArrayList;

    .line 9
    iput-boolean v0, p0, Lc/X;->n:Z

    .line 10
    iget v0, p0, Lc/X;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lc/X;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 11
    sget-object v0, Lc/z1;->a:Lc/z1;

    iput-object v0, p0, Lc/X;->r:Lc/z1;

    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lc/X;->s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lc/X;->t:F

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lc/X;->u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 15
    iput-object p5, p0, Lc/X;->d:Lc/h;

    if-eqz p3, :cond_2

    .line 16
    sget-object p3, Lg/x;->e:Lg/w;

    .line 17
    iget-object p3, p3, Lg/w;->b:Ljava/lang/Object;

    .line 18
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 19
    iput-boolean p3, p0, Lc/X;->n:Z

    .line 20
    :cond_2
    invoke-virtual {p0, p4}, Lc/X;->a(Lc/J;)V

    const/4 p3, -0x1

    .line 21
    invoke-virtual {p0, p3}, Lc/X;->c(I)V

    .line 22
    invoke-virtual {p6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 23
    new-instance v0, Lc/s1;

    .line 24
    iget-object p4, p0, Lc/X;->d:Lc/h;

    if-eqz p4, :cond_4

    .line 25
    iget-object p4, p4, Lc/h;->a:La/x;

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v4, p4

    goto :goto_2

    .line 26
    :cond_4
    :goto_1
    sget-object p4, La/y;->a:La/x;

    goto :goto_0

    .line 27
    :goto_2
    iget-boolean v5, p0, Lc/X;->n:Z

    .line 28
    iget-object v6, p0, Lc/X;->m:Lc/J;

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    .line 29
    invoke-direct/range {v0 .. v6}, Lc/s1;-><init>(Ljava/io/File;Lc/X;ILa/x;ZLc/J;)V

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 30
    invoke-virtual {p6, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lc/X;ILjava/util/ArrayList;I)Lc/v1;
    .locals 6

    .line 11
    iget-object v0, p0, Lc/X;->r:Lc/z1;

    iget v1, p0, Lc/X;->t:F

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_1

    .line 12
    iget-object p2, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 13
    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Lc/s1;

    .line 17
    invoke-virtual {v2}, Lc/s1;->m()Landroid/util/Size;

    move-result-object v3

    .line 18
    iget v2, v2, Lc/s1;->w:I

    .line 19
    new-instance v4, Lc/H;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3, v2}, Lc/H;-><init>(III)V

    .line 20
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 21
    :cond_1
    invoke-virtual {p0, v0, v1, p1, p2}, Lc/X;->a(Lc/z1;FILjava/util/List;)Lc/v1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/z1;FILjava/util/List;)Lc/v1;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v2, "layoutPageSize"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "inputImages"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v2, Lc/z1;->l:Lc/z1;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    sget-object v2, Lc/z1;->a:Lc/z1;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 23
    :goto_1
    iget-object v4, v4, Lc/X;->g:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/w1;

    .line 24
    invoke-static {v0}, La/l;->a(Lc/z1;)Lc/A1;

    move-result-object v0

    iget v5, v0, Lc/A1;->b:F

    iget v6, v0, Lc/A1;->a:F

    .line 25
    iput-boolean v2, v0, Lc/A1;->c:Z

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v4, Lc/w1;->b:Z

    const/16 v7, 0xb4

    const/4 v8, 0x0

    if-nez v2, :cond_4

    .line 27
    iget-boolean v0, v0, Lc/A1;->c:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 28
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/H;

    if-nez v0, :cond_2

    new-instance v0, Lc/v1;

    .line 29
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v2, v1}, Lc/v1;-><init>(FFLjava/util/List;)V

    return-object v0

    .line 30
    :cond_2
    iget v9, v0, Lc/H;->c:I

    add-int v9, v9, p3

    .line 31
    iget v10, v0, Lc/H;->a:I

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 33
    iget v0, v0, Lc/H;->b:I

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    rem-int/2addr v9, v7

    if-nez v9, :cond_3

    .line 36
    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 37
    :cond_3
    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v0, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :goto_2
    iget-object v0, v9, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 39
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 40
    iget-object v9, v9, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    int-to-float v0, v0

    div-float/2addr v6, v0

    int-to-float v9, v9

    div-float/2addr v5, v9

    .line 42
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 43
    new-instance v6, Landroid/graphics/RectF;

    mul-float/2addr v0, v5

    mul-float/2addr v9, v5

    invoke-direct {v6, v8, v8, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_4

    .line 44
    :cond_4
    :goto_3
    new-instance v0, Landroid/graphics/RectF;

    .line 45
    invoke-direct {v0, v8, v8, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v0

    .line 46
    :goto_4
    iget-boolean v0, v4, Lc/w1;->a:Z

    const/16 v4, 0x10e

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    add-int v0, v0, p3

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    if-ltz v3, :cond_19

    .line 49
    move-object v12, v9

    check-cast v12, Lc/H;

    if-eqz v2, :cond_6

    mul-int/lit16 v3, v3, 0xb4

    add-int/2addr v3, v0

    .line 50
    rem-int/lit16 v3, v3, 0x168

    goto :goto_7

    :cond_6
    const/4 v3, -0x1

    .line 51
    :goto_7
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    .line 52
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    const/16 v13, 0x5a

    const/high16 v14, 0x42100000    # 36.0f

    if-eqz v3, :cond_a

    if-eq v3, v13, :cond_9

    if-eq v3, v7, :cond_8

    if-eq v3, v4, :cond_7

    goto :goto_8

    :cond_7
    sub-float/2addr v9, v14

    goto :goto_8

    :cond_8
    add-float/2addr v11, v14

    goto :goto_8

    :cond_9
    add-float/2addr v9, v14

    goto :goto_8

    :cond_a
    sub-float/2addr v11, v14

    .line 53
    :goto_8
    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v9, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 54
    new-instance v9, Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/RectF;->left:F

    move/from16 p0, v14

    iget v14, v6, Landroid/graphics/RectF;->top:F

    iget v8, v6, Landroid/graphics/RectF;->right:F

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v9, v11, v14, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v3, :cond_e

    if-eq v3, v13, :cond_d

    if-eq v3, v7, :cond_c

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_b

    goto :goto_9

    .line 55
    :cond_b
    iget v4, v15, Landroid/graphics/PointF;->x:F

    iput v4, v9, Landroid/graphics/RectF;->right:F

    goto :goto_9

    .line 56
    :cond_c
    iget v4, v15, Landroid/graphics/PointF;->y:F

    iput v4, v9, Landroid/graphics/RectF;->top:F

    goto :goto_9

    .line 57
    :cond_d
    iget v4, v15, Landroid/graphics/PointF;->x:F

    iput v4, v9, Landroid/graphics/RectF;->left:F

    goto :goto_9

    .line 58
    :cond_e
    iget v4, v15, Landroid/graphics/PointF;->y:F

    iput v4, v9, Landroid/graphics/RectF;->bottom:F

    .line 59
    :goto_9
    iget v4, v12, Lc/H;->c:I

    iget v8, v12, Lc/H;->b:I

    iget v11, v12, Lc/H;->a:I

    add-int v4, v4, p3

    .line 60
    rem-int/lit16 v4, v4, 0x168

    .line 61
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 63
    rem-int/lit16 v13, v4, 0xb4

    if-nez v13, :cond_f

    .line 64
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v14, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 65
    :cond_f
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v7, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    :goto_a
    iget-object v7, v13, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 67
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 68
    iget-object v13, v13, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 69
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eqz v2, :cond_10

    int-to-float v14, v7

    const/high16 v16, 0x437c0000    # 252.0f

    div-float v14, v16, v14

    move/from16 v19, v0

    int-to-float v0, v13

    div-float v0, v16, v0

    .line 70
    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move-object/from16 v20, v1

    goto :goto_b

    :cond_10
    move/from16 v19, v0

    .line 71
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v14, v7

    div-float/2addr v0, v14

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    move-object/from16 v20, v1

    int-to-float v1, v13

    div-float/2addr v14, v1

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_b
    mul-float v1, v0, p2

    .line 72
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    int-to-float v7, v7

    div-float/2addr v14, v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    int-to-float v13, v13

    div-float/2addr v9, v13

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float/2addr v9, v0

    mul-float/2addr v7, v1

    mul-float/2addr v13, v1

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v11, v11

    const/high16 v16, -0x41000000    # -0.5f

    mul-float v14, v11, v16

    int-to-float v8, v8

    move/from16 v21, v2

    mul-float v2, v8, v16

    .line 74
    invoke-virtual {v0, v14, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, v4

    .line 75
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 76
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 77
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    move-object/from16 v22, v6

    mul-float v6, v16, v17

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v18, v7

    mul-float v7, v16, v17

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v7, v18, v17

    add-float v7, v7, p0

    mul-float v13, v13, v17

    add-float v13, v13, p0

    if-eqz v3, :cond_14

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_13

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_12

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_11

    move/from16 p0, v9

    goto :goto_c

    :cond_11
    neg-float v6, v7

    move/from16 p0, v9

    const/4 v9, 0x0

    .line 78
    invoke-virtual {v0, v6, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    :cond_12
    move/from16 p0, v9

    const/4 v9, 0x0

    .line 79
    invoke-virtual {v0, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    :cond_13
    move/from16 p0, v9

    const/4 v9, 0x0

    .line 80
    invoke-virtual {v0, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    :cond_14
    move/from16 p0, v9

    const/4 v9, 0x0

    neg-float v6, v13

    .line 81
    invoke-virtual {v0, v9, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    :goto_c
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    invoke-virtual {v6, v14, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float v2, v4

    .line 84
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 85
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 86
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v17

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v17

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v3, :cond_18

    const/16 v1, 0x5a

    if-eq v3, v1, :cond_17

    const/16 v1, 0xb4

    if-eq v3, v1, :cond_16

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_15

    const/4 v9, 0x0

    goto :goto_d

    :cond_15
    neg-float v2, v7

    const/4 v9, 0x0

    .line 87
    invoke-virtual {v6, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_d

    :cond_16
    const/16 v4, 0x10e

    const/4 v9, 0x0

    neg-float v2, v13

    .line 88
    invoke-virtual {v6, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_d

    :cond_17
    const/16 v1, 0xb4

    const/16 v4, 0x10e

    const/4 v9, 0x0

    .line 89
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_d

    :cond_18
    const/16 v1, 0xb4

    const/16 v4, 0x10e

    const/4 v9, 0x0

    .line 90
    invoke-virtual {v6, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 91
    :goto_d
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 92
    new-instance v2, Landroid/graphics/RectF;

    .line 93
    invoke-direct {v2, v9, v9, v11, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 94
    new-instance v11, Lc/x;

    move/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v18, v6

    move-object/from16 v17, v15

    move/from16 v15, p0

    invoke-direct/range {v11 .. v18}, Lc/x;-><init>(Lc/H;Landroid/graphics/RectF;FFLandroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/Matrix;)V

    .line 95
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    move v8, v9

    move v3, v10

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v6, v22

    goto/16 :goto_6

    .line 96
    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_1a
    move-object/from16 v22, v6

    .line 97
    new-instance v0, Lc/v1;

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lc/v1;-><init>(FFLjava/util/List;)V

    return-object v0
.end method

.method public final a(Lc/J;)V
    .locals 4

    .line 98
    iput-object p1, p0, Lc/X;->m:Lc/J;

    if-nez p1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    sget-object v0, Lc/P;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lc/X;->b:Lc/M;

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 100
    iget-object v0, v2, Lc/M;->o:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, v2, Lc/M;->s:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, v2, Lc/M;->r:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, v2, Lc/M;->o:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, v2, Lc/M;->q:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, v2, Lc/M;->p:Ljava/lang/String;

    .line 106
    :goto_0
    iget-object v1, v2, Lc/M;->d:Ljava/lang/String;

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-object v0, v2, Lc/M;->C:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lc/X;->r:Lc/z1;

    sget-object v1, Lc/z1;->a:Lc/z1;

    if-ne v0, v1, :cond_6

    sget-object v0, Lc/J;->e:Lc/J;

    if-ne p1, v0, :cond_6

    .line 110
    sget-object p1, Lc/z1;->l:Lc/z1;

    invoke-virtual {p0, p1}, Lc/X;->a(Lc/z1;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lc/z1;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lc/X;->r:Lc/z1;

    .line 112
    iget-object v0, p0, Lc/X;->s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 113
    iget-object p0, p0, Lc/X;->b:Lc/M;

    iget-object v0, p0, Lc/M;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 115
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 116
    throw p0

    .line 117
    :pswitch_0
    const-string p1, "\"business_card\""

    goto :goto_0

    :pswitch_1
    const-string p1, "\"A5_landscape\""

    goto :goto_0

    :pswitch_2
    const-string p1, "\"A5_portrait\""

    goto :goto_0

    :pswitch_3
    const-string p1, "\"A4_landscape\""

    goto :goto_0

    :pswitch_4
    const-string p1, "\"A4_portrait\""

    goto :goto_0

    :pswitch_5
    const-string p1, "\"A3_landscape\""

    goto :goto_0

    :pswitch_6
    const-string p1, "\"A3_portrait\""

    goto :goto_0

    :pswitch_7
    const-string p1, "\"legal_landscape\""

    goto :goto_0

    :pswitch_8
    const-string p1, "\"legal_portrait\""

    goto :goto_0

    :pswitch_9
    const-string p1, "\"letter_landscape\""

    goto :goto_0

    :pswitch_a
    const-string p1, "\"letter_portrait\""

    goto :goto_0

    :pswitch_b
    const-string p1, "\"fit\""

    .line 118
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    iput-object p1, p0, Lc/M;->x:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(Lc/z1;Ljava/lang/Float;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lc/X;->a(Lc/z1;)V

    .line 225
    :cond_0
    iget-object p1, p0, Lc/X;->r:Lc/z1;

    sget-object v0, Lc/z1;->a:Lc/z1;

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 227
    :goto_0
    iput p1, p0, Lc/X;->t:F

    .line 228
    iget-object p2, p0, Lc/X;->u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 229
    iget-object p0, p0, Lc/X;->b:Lc/M;

    iget-object p2, p0, Lc/M;->g:Ljava/lang/String;

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 230
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    iput-object p1, p0, Lc/M;->y:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/X;->f:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lc/X;->m:Lc/J;

    sget-object v1, Lc/J;->d:Lc/J;

    if-ne v0, v1, :cond_2

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lc/X;->b:Lc/M;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, v1, Lc/M;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, v1, Lc/M;->h:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-object p1, v1, Lc/M;->D:Ljava/lang/String;

    .line 10
    sget-object p1, Lc/h;->j:Lc/e;

    iget-object p0, p0, Lc/X;->d:Lc/h;

    const/4 p1, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lc/e;->a(Lc/h;ZI)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    const/16 v0, 0x7b

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lc/X;->b:Lc/M;

    iget-object v2, v1, Lc/M;->z:Ljava/lang/String;

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, v1, Lc/M;->z:Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, v1, Lc/M;->v:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_0
    iget-object v2, v1, Lc/M;->A:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ","

    if-nez v2, :cond_1

    .line 129
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, v1, Lc/M;->A:Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    iget-object v2, v1, Lc/M;->B:Ljava/lang/String;

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, v1, Lc/M;->B:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    iget-object v2, v1, Lc/M;->w:Ljava/lang/String;

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2c

    if-nez v2, :cond_3

    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, v1, Lc/M;->w:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_3
    iget-object v2, v1, Lc/M;->x:Ljava/lang/String;

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 144
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-object v2, v1, Lc/M;->x:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    iget-object v2, v1, Lc/M;->y:Ljava/lang/String;

    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 149
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, v1, Lc/M;->y:Ljava/lang/String;

    .line 151
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_5
    iget-object v2, v1, Lc/M;->C:Ljava/lang/String;

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget-object v2, v1, Lc/M;->C:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_6
    iget-object v2, v1, Lc/M;->D:Ljava/lang/String;

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, v1, Lc/M;->D:Ljava/lang/String;

    .line 161
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_7
    iget-object v2, v1, Lc/M;->E:Ljava/lang/String;

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 164
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, v1, Lc/M;->E:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_8
    iget-object v2, v1, Lc/M;->F:Ljava/lang/String;

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, v1, Lc/M;->F:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\"images\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_13

    if-lez v2, :cond_a

    .line 175
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 177
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/s1;

    .line 178
    iget-object v5, v4, Lc/s1;->g:Lc/E0;

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    iget-object v4, v4, Lc/s1;->h:Lc/G;

    .line 181
    invoke-virtual {v4}, Lc/G;->d()Ljava/io/File;

    move-result-object v4

    .line 182
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    .line 184
    :cond_b
    iget-object v6, v5, Lc/E0;->c:Ljava/lang/String;

    .line 185
    iget-object v7, v5, Lc/E0;->h:Ljava/lang/String;

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget-object v7, v5, Lc/E0;->b:Ljava/lang/String;

    .line 189
    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 190
    :cond_c
    :goto_2
    iget-object v4, v5, Lc/E0;->i:Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v4, v5, Lc/E0;->j:Ljava/lang/String;

    .line 193
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 194
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    iget-object v4, v5, Lc/E0;->j:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_d
    iget-object v4, v5, Lc/E0;->k:Ljava/lang/String;

    .line 198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 199
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    iget-object v4, v5, Lc/E0;->k:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_e
    :goto_3
    iget-object v4, v5, Lc/E0;->l:Ljava/lang/String;

    .line 203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 204
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    iget-object v4, v5, Lc/E0;->l:Ljava/lang/String;

    .line 206
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_f
    iget-object v4, v5, Lc/E0;->m:Ljava/lang/String;

    .line 208
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    iget-object v4, v5, Lc/E0;->m:Ljava/lang/String;

    .line 211
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_10
    iget-object v4, v5, Lc/E0;->n:Ljava/lang/String;

    .line 213
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    iget-object v4, v5, Lc/E0;->n:Ljava/lang/String;

    .line 216
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_11
    iget-object v4, v5, Lc/E0;->o:Ljava/lang/String;

    .line 218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 219
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    iget-object v4, v5, Lc/E0;->o:Ljava/lang/String;

    .line 221
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/16 v4, 0x7d

    .line 222
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 223
    :cond_13
    const-string p0, "]}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c()J
    .locals 3

    .line 1
    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lc/s1;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    .line 10
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 11
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 13
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object p0, v0

    .line 14
    :goto_2
    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(I)V
    .locals 3

    .line 15
    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/s1;

    .line 18
    invoke-virtual {v1}, Lc/s1;->k()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/s1;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/s1;

    .line 24
    iget-object v0, v0, Lc/s1;->H:Lc/k1;

    .line 25
    sget-object v1, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final d(I)V
    .locals 6

    iget v0, p0, Lc/X;->o:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    move p1, v2

    :cond_0
    iput p1, p0, Lc/X;->o:I

    iget-object v1, p0, Lc/X;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget p1, p0, Lc/X;->o:I

    const/4 v1, 0x0

    iget-object v3, p0, Lc/X;->b:Lc/M;

    if-eqz p1, :cond_1

    iget-object v4, v3, Lc/M;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iput-object p1, v3, Lc/M;->w:Ljava/lang/String;

    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    sget-object p1, Lc/h;->j:Lc/e;

    iget-object p1, p0, Lc/X;->d:Lc/h;

    const/4 v0, 0x1

    invoke-static {p1, v0, v2}, Lc/e;->a(Lc/h;ZZ)V

    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/s1;

    iget-object v0, p1, Lc/s1;->c0:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    sget-object v0, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v3, Lc/T0;

    invoke-direct {v3, p1, v1, v2}, Lc/T0;-><init>(Lc/s1;Lkotlin/coroutines/Continuation;I)V

    const/4 v4, 0x2

    sget-object v5, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v5, v0, v1, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p1, Lc/s1;->c0:Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/s1;

    iget-object v0, v0, Lc/s1;->A:Lc/e1;

    invoke-virtual {v0}, Lc/M0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lc/X;

    if-eqz v0, :cond_0

    check-cast p1, Lc/X;

    iget p1, p1, Lc/X;->a:I

    iget p0, p0, Lc/X;->a:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lc/X;->a:I

    return p0
.end method

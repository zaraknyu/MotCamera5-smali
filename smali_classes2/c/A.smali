.class public final Lc/A;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;Lc/G;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/A;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lc/A;->d:Ljava/lang/Object;

    iput-object p2, p0, Lc/A;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Le/A0;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc/A;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lc/A;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget v0, p0, Lc/A;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lc/A;

    iget-object p0, p0, Lc/A;->e:Ljava/lang/Object;

    check-cast p0, Le/A0;

    invoke-direct {v0, p0, p2}, Lc/A;-><init>(Le/A0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lc/A;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance p1, Lc/A;

    iget-object v0, p0, Lc/A;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    iget-object p0, p0, Lc/A;->e:Ljava/lang/Object;

    check-cast p0, Lc/G;

    invoke-direct {p1, v0, p0, p2}, Lc/A;-><init>(Landroid/graphics/BitmapFactory$Options;Lc/G;Lkotlin/coroutines/Continuation;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc/A;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lc/A;

    iget-object p0, p0, Lc/A;->e:Ljava/lang/Object;

    check-cast p0, Le/A0;

    invoke-direct {v0, p0, p2}, Lc/A;-><init>(Le/A0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lc/A;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lc/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lc/A;

    iget-object v0, p0, Lc/A;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    iget-object p0, p0, Lc/A;->e:Ljava/lang/Object;

    check-cast p0, Lc/G;

    invoke-direct {p1, v0, p0, p2}, Lc/A;-><init>(Landroid/graphics/BitmapFactory$Options;Lc/G;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lc/A;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    iget-object v3, p0, Lc/A;->e:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    check-cast v3, Le/A0;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, p0, Lc/A;->c:I

    if-eqz v7, :cond_2

    if-eq v7, v5, :cond_1

    if-ne v7, v6, :cond_0

    iget-object v2, p0, Lc/A;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v2, p0, Lc/A;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v7, p0, Lc/A;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lc/A;->b:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/A;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Le/A0;->f:Le/p0;

    :cond_3
    :goto_0
    move-object v2, p1

    :goto_1
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_13

    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    :goto_2
    :try_start_3
    iget-object v7, v3, Le/A0;->c:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    goto/16 :goto_7

    :cond_4
    :goto_3
    iget-object v7, v3, Le/A0;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    iget-object v7, v3, Le/A0;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object p1, p0, Lc/A;->b:Ljava/lang/Object;

    iput-object v2, p0, Lc/A;->a:Ljava/lang/Object;

    iput-object v2, p0, Lc/A;->d:Ljava/lang/Object;

    iput v5, p0, Lc/A;->c:I

    invoke-virtual {v7, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v7, v0, :cond_6

    goto/16 :goto_b

    :cond_6
    move-object v8, p1

    move-object p1, v7

    move-object v7, v2

    :goto_4
    :try_start_4
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v7

    move-object p1, v8

    goto :goto_2

    :cond_7
    :try_start_5
    iget-object v7, v3, Le/A0;->c:Ljava/lang/Object;

    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/s0;

    iget-object v9, v9, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {v9}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iput-object v7, v3, Le/A0;->c:Ljava/lang/Object;

    sget-object v2, Le/A0;->f:Le/p0;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_b

    iget-object v2, v3, Le/A0;->d:Le/s0;

    if-eqz v2, :cond_a

    sget-object v2, Le/A0;->f:Le/p0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le/A0;->h:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->a()J

    iput-object v4, v3, Le/A0;->d:Le/s0;

    :cond_a
    move-object v2, p1

    goto/16 :goto_9

    :cond_b
    :try_start_6
    sget-object v2, Le/A0;->f:Le/p0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Le/A0;->e:Lc/B;

    sget-object v7, Le/A0;->g:[Lkotlin/reflect/KProperty;

    aget-object v7, v7, v1

    invoke-virtual {v2, v3, v7}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v7, 0x3c23d70a    # 0.01f

    add-float/2addr v2, v7

    iget-object v7, v3, Le/A0;->c:Ljava/lang/Object;

    new-instance v8, Le/x0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Le/y0;

    invoke-direct {v9, v8, v2}, Le/y0;-><init>(Le/x0;F)V

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/s0;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_c

    iget-object v2, v3, Le/A0;->d:Le/s0;

    if-eqz v2, :cond_3

    sget-object v2, Le/A0;->h:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->a()J

    iput-object v4, v3, Le/A0;->d:Le/s0;

    goto/16 :goto_0

    :cond_c
    :try_start_7
    iput-object v2, v3, Le/A0;->d:Le/s0;

    iput-object p1, p0, Lc/A;->b:Ljava/lang/Object;

    iput-object v4, p0, Lc/A;->a:Ljava/lang/Object;

    iput-object v4, p0, Lc/A;->d:Ljava/lang/Object;

    iput v6, p0, Lc/A;->c:I

    invoke-virtual {v2, p0}, Le/s0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v2, v0, :cond_d

    goto :goto_b

    :cond_d
    move-object v2, p1

    :goto_6
    iget-object p1, v3, Le/A0;->d:Le/s0;

    if-eqz p1, :cond_10

    sget-object p1, Le/A0;->f:Le/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Le/A0;->h:Lg/a0;

    invoke-virtual {p1}, Lg/a0;->a()J

    iput-object v4, v3, Le/A0;->d:Le/s0;

    goto :goto_9

    :goto_7
    move-object v8, v2

    :goto_8
    :try_start_8
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_e

    sget-object v2, Le/A0;->f:Le/p0;

    :cond_e
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_11

    iget-object p1, v3, Le/A0;->d:Le/s0;

    if-eqz p1, :cond_f

    sget-object p1, Le/A0;->f:Le/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Le/A0;->h:Lg/a0;

    invoke-virtual {p1}, Lg/a0;->a()J

    iput-object v4, v3, Le/A0;->d:Le/s0;

    :cond_f
    move-object v2, v8

    :cond_10
    :goto_9
    sget-object p1, Le/A0;->f:Le/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_11
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_a
    iget-object p1, v3, Le/A0;->d:Le/s0;

    if-eqz p1, :cond_12

    sget-object p1, Le/A0;->f:Le/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Le/A0;->h:Lg/a0;

    invoke-virtual {p1}, Lg/a0;->a()J

    iput-object v4, v3, Le/A0;->d:Le/s0;

    :cond_12
    sget-object p1, Le/A0;->f:Le/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p0

    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_b
    return-object v0

    :pswitch_0
    check-cast v3, Lc/G;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, p0, Lc/A;->c:I

    if-eqz v7, :cond_16

    if-eq v7, v5, :cond_15

    if-ne v7, v6, :cond_14

    iget-object v0, p0, Lc/A;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object p0, p0, Lc/A;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/BitmapFactory$Options;

    :try_start_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_f

    :catch_3
    move-exception p0

    goto/16 :goto_13

    :catch_4
    move-exception p0

    goto/16 :goto_14

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    iget-object p0, p0, Lc/A;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_c

    :cond_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/A;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/BitmapFactory$Options;

    if-nez p1, :cond_17

    sget-object p1, Lc/G;->j:Lc/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_17
    invoke-virtual {v3}, Lc/G;->d()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3}, Lc/G;->g()Z

    move-result v7

    if-nez v7, :cond_20

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_15

    :cond_18
    iget-boolean v7, v3, Lc/G;->g:Z

    if-nez v7, :cond_1a

    iput-object p1, p0, Lc/A;->a:Ljava/lang/Object;

    iput v5, p0, Lc/A;->c:I

    sget-object v3, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v3, Lg/M;

    invoke-direct {v3, v2, v4, v1}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v3, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_19

    goto :goto_e

    :cond_19
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_c
    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_21

    iget p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le p1, v5, :cond_21

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr p1, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, p0

    invoke-static {v4, p1, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_d
    move-object v4, p0

    goto/16 :goto_16

    :cond_1a
    :try_start_b
    iput-object p1, p0, Lc/A;->a:Ljava/lang/Object;

    iput-object v2, p0, Lc/A;->b:Ljava/lang/Object;

    iput v6, p0, Lc/A;->c:I

    invoke-static {v3, p1, v2, p0}, Lc/G;->a(Lc/G;Landroid/graphics/BitmapFactory$Options;Ljava/io/File;Lc/A;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-ne p0, v0, :cond_1b

    :goto_e
    move-object v4, v0

    goto/16 :goto_16

    :cond_1b
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    :goto_f
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    if-nez p1, :cond_1c

    :try_start_c
    sget-object v1, Lg/x;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const-string v1, "inPreferredConfig"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lg/x;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_10

    :catch_5
    move-exception p0

    goto :goto_11

    :catch_6
    move-exception p0

    goto :goto_12

    :cond_1c
    :goto_10
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_1d

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1d
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_d

    :goto_11
    move-object v4, p1

    goto :goto_13

    :goto_12
    move-object v4, p1

    goto :goto_14

    :cond_1e
    move-object v4, p1

    goto :goto_16

    :goto_13
    sget-object p1, Lc/G;->l:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :goto_14
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_1f

    sget-object p1, Lc/G;->l:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_1f
    throw p0

    :cond_20
    :goto_15
    sget-object p0, Lc/G;->j:Lc/e;

    :cond_21
    :goto_16
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

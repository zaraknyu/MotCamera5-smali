.class public final Lg/M;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput p3, p0, Lg/M;->$r8$classId:I

    iput-object p1, p0, Lg/M;->a:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget p1, p0, Lg/M;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lg/M;

    iget-object p0, p0, Lg/M;->a:Ljava/io/File;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lg/M;

    iget-object p0, p0, Lg/M;->a:Ljava/io/File;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/M;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lg/M;

    iget-object p0, p0, Lg/M;->a:Ljava/io/File;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lg/M;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lg/M;

    iget-object p0, p0, Lg/M;->a:Ljava/io/File;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lg/M;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lg/M;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lg/M;->$r8$classId:I

    const-string v1, "r"

    iget-object p0, p0, Lg/M;->a:Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "g.P"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-direct {p1, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v2

    goto :goto_3

    :goto_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    return-object v1

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_5
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-direct {p1, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_a

    :try_start_6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    move-object v1, v2

    goto :goto_4

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_6

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_4

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_4

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    mul-int v8, p0, v0

    mul-int/lit8 v8, v8, 0x4

    int-to-long v8, v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p0, :cond_5

    :try_start_7
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_6

    :cond_4
    move-object p0, v2

    :cond_5
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object p1, v0

    goto :goto_a

    :catch_6
    move-object v2, p0

    goto :goto_9

    :goto_6
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    move-exception v0

    move-object p1, v0

    move-object p0, v1

    goto :goto_7

    :catch_8
    move-exception v0

    move-object p1, v0

    move-object p0, v1

    goto :goto_a

    :catch_9
    move-object v2, v1

    goto :goto_9

    :catch_a
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    goto :goto_7

    :catch_b
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    goto :goto_a

    :goto_7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :cond_6
    move-object v2, p0

    :goto_8
    invoke-static {}, Ljava/lang/System;->gc()V

    :catch_c
    :goto_9
    move-object p0, v2

    goto :goto_c

    :goto_a
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_7
    move-object v2, p0

    :goto_b
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_8

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    throw p1

    :goto_c
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

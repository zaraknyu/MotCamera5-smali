.class public abstract Landroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sTypefaceCache:Landroidx/collection/LruCache;

.field public static final sTypefaceCompatImpl:Lcom/google/android/gms/dynamite/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TypefaceCompat static init"

    invoke-static {v0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamite/zzf;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/google/android/gms/dynamite/zzf;

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "TypefaceCompat.createFromFontInfo"

    invoke-static {v0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p0}, Lcom/google/android/gms/dynamite/zzf;->getFontFamily([Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/zzf;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "TypefaceCompatApi29Impl"

    const-string p2, "Font load failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/CamUtils;Z)Landroid/graphics/Typeface;
    .locals 12

    move/from16 v4, p6

    move-object/from16 v1, p7

    instance-of v0, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    const/4 v2, 0x4

    const/4 v6, -0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    iget-object v0, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    invoke-direct {p1, v2, v1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v0

    :cond_3
    const/4 v9, 0x1

    if-eqz p8, :cond_5

    iget v0, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    if-nez v0, :cond_4

    :goto_2
    move v0, v9

    goto :goto_3

    :cond_4
    move v0, v8

    goto :goto_3

    :cond_5
    if-nez v1, :cond_4

    goto :goto_2

    :goto_3
    const/4 v2, -0x1

    if-eqz p8, :cond_6

    iget v3, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v2

    :goto_4
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Landroidx/room/ObservedTableVersions;

    const/16 v11, 0xd

    invoke-direct {v5, v8, v11}, Landroidx/room/ObservedTableVersions;-><init>(CI)V

    iput-object v1, v5, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mFallbackRequest:Landroidx/core/provider/FontRequest;

    if-eqz v1, :cond_7

    iget-object p1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    invoke-static {p1, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_7
    iget-object p1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_5
    new-instance v11, Lcom/tinder/StateMachine;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {v1, v3, v9}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Landroid/os/Handler;I)V

    const/4 v3, 0x7

    invoke-direct {v11, v3, v5, v1}, Lcom/tinder/StateMachine;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_a

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/core/provider/FontRequest;

    sget-object p1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_8

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$8;

    invoke-direct {p0, v9, v5, v0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabk;->execute(Ljava/lang/Runnable;)V

    move-object v7, v0

    goto/16 :goto_e

    :cond_8
    if-ne v10, v2, :cond_9

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0, v4}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object p0

    invoke-virtual {v11, p0}, Lcom/tinder/StateMachine;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v7, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_e

    :cond_9
    new-instance v0, Landroidx/core/provider/FontRequestWorker$1;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    :try_start_0
    sget-object p0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v10

    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    check-cast p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {v11, p0}, Lcom/tinder/StateMachine;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v7, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string/jumbo p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    throw p0

    :goto_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object p0, v11, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabk;

    iget-object p1, v11, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p1, Landroidx/room/ObservedTableVersions;

    new-instance v0, Landroidx/core/provider/CallbackWrapper$2;

    invoke-direct {v0, v6, v8, p1}, Landroidx/core/provider/CallbackWrapper$2;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p1, v4}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v2, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_c

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$8;

    invoke-direct {p0, v9, v5, v2}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabk;->execute(Ljava/lang/Runnable;)V

    move-object v7, v2

    goto/16 :goto_e

    :cond_c
    new-instance v1, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v1, v8, v11}, Landroidx/core/provider/FontRequestWorker$2;-><init>(ILjava/lang/Object;)V

    sget-object v3, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    new-instance v0, Landroidx/core/provider/FontRequestWorker$1;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    sget-object p0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {p1, v9, v1}, Landroidx/core/provider/FontRequestWorker$2;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_e

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_8

    :cond_e
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_8
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v2}, Lcom/motorola/camera/mcf/Mcf$7;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    iput-object p1, v2, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    :goto_9
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_f
    sget-object p0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/google/android/gms/dynamite/zzf;

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object p0, p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    array-length p1, p0

    move-object v0, v7

    :goto_a
    if-ge v8, p1, :cond_11

    aget-object v3, p0, v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    iget v9, v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    invoke-direct {v5, p2, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    iget v9, v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    iget-boolean v9, v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    iget v9, v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    iget-object v3, v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v3

    if-nez v0, :cond_10

    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v5, v3}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v5

    goto :goto_b

    :catch_4
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_10
    invoke-virtual {v0, v3}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_5
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    if-nez v0, :cond_12

    goto :goto_d

    :cond_12
    :try_start_7
    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {p0, v4}, Lcom/google/android/gms/dynamite/zzf;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :goto_c
    const-string p1, "TypefaceCompatApi29Impl"

    const-string v0, "Font load failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    if-eqz v1, :cond_14

    if-eqz v7, :cond_13

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    invoke-direct {p1, v2, v1, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_13
    invoke-virtual {v1, v6}, Landroidx/core/content/res/CamUtils;->callbackFailAsync(I)V

    :cond_14
    :goto_e
    if-eqz v7, :cond_15

    sget-object p0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v7
.end method

.method public static createFromResourcesFontFile(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/google/android/gms/dynamite/zzf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TypefaceCompatApi29Impl"

    const-string v2, "Font load failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public abstract Landroidx/work/impl/WorkManagerImplExtKt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# direct methods
.method public static create(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionInvokeDescriptor;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->parameters:Ljava/util/List;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionInvokeDescriptor;

    const/4 v3, 0x0

    const/4 v14, 0x1

    move/from16 v4, p1

    invoke-direct {v2, v0, v3, v14, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionInvokeDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionInvokeDescriptor;IZ)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/List;)Lkotlin/collections/IndexingIterable;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    move-object/from16 v3, v16

    check-cast v3, Lkotlin/collections/IndexingIterator;

    iget-object v4, v3, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/collections/IndexedValue;

    iget v5, v3, Lkotlin/collections/IndexedValue;->index:I

    iget-object v3, v3, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "asString(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "T"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "instance"

    :goto_2
    move-object v6, v3

    move-object v3, v2

    goto :goto_3

    :cond_1
    const-string v6, "E"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v4, "receiver"

    goto :goto_2

    :cond_2
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "toLowerCase(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    const-string v4, "getDefaultType(...)"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    const/4 v4, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    const/4 v3, 0x0

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v6, v5

    move-object v4, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    move-object v3, v2

    iput-boolean v14, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasSynthesizedParameterNames:Z

    return-object v3
.end method

.method public static final createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/transition/TransitionValuesMaps;

    iget-object v0, p1, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v4, v0}, Landroidx/transition/TransitionValuesMaps;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v4, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v2, Landroidx/room/TransactionExecutor;

    const-string/jumbo v3, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const-string v6, "clock"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const-class v7, Landroidx/work/impl/WorkDatabase;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/room/RoomDatabase$Builder;

    const/4 v8, 0x0

    invoke-direct {v5, v0, v7, v8}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v6, v5, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    goto :goto_0

    :cond_0
    const-string v5, "androidx.work.workdb"

    invoke-static {v0, v7, v5}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v5

    new-instance v7, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iput-object v7, v5, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    :goto_0
    iput-object v2, v5, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/impl/CleanupCallback;

    invoke-direct {v2, v3}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/work/SystemClock;)V

    iget-object v3, v5, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    const/4 v3, 0x2

    const/4 v7, 0x3

    invoke-direct {v2, v0, v3, v7}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$5:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$6:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    const/4 v3, 0x5

    const/4 v7, 0x6

    invoke-direct {v2, v0, v3, v7}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$7:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$8:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$9:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    invoke-direct {v2, v0}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    const/16 v3, 0xa

    const/16 v7, 0xb

    invoke-direct {v2, v0, v3, v7}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$1:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$2:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$3:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    sget-object v2, Landroidx/work/impl/Migration_1_2;->INSTANCE$4:Landroidx/work/impl/Migration_1_2;

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-instance v2, Landroidx/work/impl/WorkMigration9To10;

    const/16 v3, 0x15

    const/16 v7, 0x16

    invoke-direct {v2, v0, v3, v7}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    filled-new-array {v2}, [Landroidx/room/migration/Migration;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    const/4 v0, 0x0

    iput-boolean v0, v5, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v6, v5, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    invoke-virtual {v5}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    new-instance v8, Lcom/motorola/camera/AppFeatures;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v2, v4}, Lcom/motorola/camera/AppFeatures;-><init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;)V

    new-instance v5, Landroidx/work/impl/Processor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1, p1, v4, v0}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/transition/TransitionValuesMaps;Landroidx/work/impl/WorkDatabase;)V

    sget v1, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->$r8$clinit:I

    sget-object v1, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-instance v9, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    invoke-direct {v9, p0, v0, p1}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V

    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, v1, v6}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v3, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroidx/work/impl/background/greedy/GreedyScheduler;

    new-instance v6, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v6, v5, v4}, Lcom/motorola/camera/CameraKpi;-><init>(Landroidx/work/impl/Processor;Landroidx/transition/TransitionValuesMaps;)V

    move-object v2, p0

    move-object v3, p1

    move-object v7, v4

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Landroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Lcom/motorola/camera/AppFeatures;Landroidx/work/impl/Processor;Lcom/motorola/camera/CameraKpi;Landroidx/transition/TransitionValuesMaps;)V

    move-object v4, v7

    filled-new-array {v9, v1}, [Landroidx/work/impl/Scheduler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v1, Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v7, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v8}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/transition/TransitionValuesMaps;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Lcom/motorola/camera/AppFeatures;)V

    return-object v1
.end method

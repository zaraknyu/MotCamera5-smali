.class public final synthetic Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "kotlin.Unit"

    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v4, 0x16

    invoke-direct {v3, v4, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/DpKt;->buildSerialDescriptor(Ljava/lang/String;Landroidx/compose/ui/unit/DpSize;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0, v0}, Lkotlinx/serialization/internal/Platform_commonKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string v0, "com.motorola.camera.background.service.jms.statemachines.StateMachineBase.Companion.State"

    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v1, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/DpKt;->buildSerialDescriptor(Ljava/lang/String;Landroidx/compose/ui/unit/DpSize;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appContext:Landroid/content/Context;

    const-class v0, Lkotlin/reflect/jvm/KCallablesJvm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/KCallablesJvm;->zza:Lcom/google/android/gms/tasks/zzb;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/play/core/appupdate/zzi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    sput-object p0, Lkotlin/reflect/jvm/KCallablesJvm;->zza:Lcom/google/android/gms/tasks/zzb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/reflect/jvm/KCallablesJvm;->zza:Lcom/google/android/gms/tasks/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/appupdate/zzg;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_5
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/FpsCalculator;

    iget p0, p0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    new-array p0, p0, [J

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

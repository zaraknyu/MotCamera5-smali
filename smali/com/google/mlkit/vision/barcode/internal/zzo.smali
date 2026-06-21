.class public final Lcom/google/mlkit/vision/barcode/internal/zzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzm;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;


# instance fields
.field public zzb:Z

.field public zzc:Z

.field public zzd:Z

.field public final zze:Landroid/content/Context;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "com.google.android.gms.tflite_dynamite"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "at index "

    invoke-static {v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;-><init>(I[Ljava/lang/Object;)V

    sput-object v1, Lcom/google/mlkit/vision/barcode/internal/zzo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;
    .locals 12

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzc()Z

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzb:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/base/zaa;->zzc(Landroid/os/Parcel;I)V

    iput-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzb:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to init barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_0
    iget p0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/16 v3, 0x23

    const/4 v4, 0x0

    if-eq v1, v3, :cond_7

    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iget v6, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->convertToMVRotation(I)I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget v9, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    const/16 v10, 0x11

    const/4 v11, 0x3

    if-eq v9, v10, :cond_4

    if-eq v9, v3, :cond_3

    const v3, 0x32315659

    if-ne v9, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const-string v0, "Unsupported image format: "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v11}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v3, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object p1, v3

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v3

    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x4f45

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result p1

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v3, v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x5

    const/16 v1, 0x8

    invoke-static {v3, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {v3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v3, v11}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    new-instance v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v2, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to run barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    throw v4

    :cond_7
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    throw v4
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/base/zaa;->zzc(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzb:Z

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzc:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zze:Landroid/content/Context;

    const-string v1, "com.google.mlkit.dynamite.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iput-boolean v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzc:Z

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Landroidx/collection/internal/Lock;

    const-string v2, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzo;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thick barcode scanner."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load the bundled barcode module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzc:Z

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v5, 0xd33d260

    const/16 v6, 0xe

    sget-object v7, Lcom/google/mlkit/vision/barcode/internal/zzo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    if-lt v2, v5, :cond_2

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-static {v2, v7}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Lcom/google/android/gms/internal/mlkit_common/zzaq;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    :try_start_1
    new-instance v5, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    sget-object v7, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/tinder/StateMachine;

    sget-object v8, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v9, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v5, v0, v7, v8, v9}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance v7, Lcom/google/mlkit/common/sdkinternal/zzo;

    invoke-direct {v7, v2, v4}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;I)V

    filled-new-array {v7}, [Lcom/google/android/gms/common/api/OptionalModuleApi;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/moduleinstall/internal/zay;->areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v2

    new-instance v5, Lcom/google/mlkit/common/internal/zzc;

    invoke-direct {v5, v6}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v2, v7, v5}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/zzw;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    iget-boolean v2, v2, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v5, "OptionalModuleUtils"

    const-string v7, "Failed to complete the task of features availability check"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_3
    move v2, v1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    invoke-static {v0, v7, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_1
    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzd:Z

    if-nez v2, :cond_6

    const-string v2, "barcode"

    const-string/jumbo v5, "tflite_dynamite"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_5

    aget-object v5, v2, v1

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzd:Z

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v3, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;)V

    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {p0, v0, v6}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    const-string v1, "com.google.android.gms.vision.barcode"

    const-string v2, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzo;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v3, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;)V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zzc:Z

    return p0

    :catch_4
    move-exception p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzC:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v3, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;)V

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thin barcode scanner."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;
    .locals 4

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzo;->zze:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyn;->$r8$clinit:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyo;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyo;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzym;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzym;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object p0

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    if-eqz v1, :cond_3

    move-object p3, v0

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyl;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p3, v0

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p3
.end method

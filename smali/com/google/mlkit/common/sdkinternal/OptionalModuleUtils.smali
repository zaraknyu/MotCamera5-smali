.class public abstract Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-wide/16 v1, 0x1

    const-string/jumbo v3, "vision.barcode"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string/jumbo v4, "vision.custom.ica"

    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string/jumbo v5, "vision.face"

    invoke-direct {v4, v1, v2, v5}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string/jumbo v6, "vision.ica"

    invoke-direct {v5, v1, v2, v6}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string/jumbo v7, "vision.ocr"

    invoke-direct {v6, v1, v2, v7}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.langid"

    invoke-direct {v7, v1, v2, v8}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "mlkit.nlclassifier"

    invoke-direct {v8, v1, v2, v9}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string/jumbo v10, "tflite_dynamite"

    invoke-direct {v9, v1, v2, v10}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v12, "mlkit.barcode.ui"

    invoke-direct {v11, v1, v2, v12}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/common/Feature;

    const-string v13, "mlkit.smartreply"

    invoke-direct {v12, v1, v2, v13}, Lcom/google/android/gms/common/Feature;-><init>(JLjava/lang/String;)V

    new-instance v1, Lcom/google/common/base/Splitter;

    const/16 v2, 0xc

    const/4 v13, 0x0

    invoke-direct {v1, v2, v13}, Lcom/google/common/base/Splitter;-><init>(IB)V

    const-string v2, "barcode"

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "custom_ica"

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "face"

    invoke-virtual {v1, v2, v4}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "ica"

    invoke-virtual {v1, v2, v5}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "ocr"

    invoke-virtual {v1, v2, v6}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "langid"

    invoke-virtual {v1, v2, v7}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "nlclassifier"

    invoke-virtual {v1, v2, v8}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v1, v10, v9}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v2, "barcode_ui"

    invoke-virtual {v1, v2, v11}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string/jumbo v2, "smart_reply"

    invoke-virtual {v1, v2, v12}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    iget-object v2, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_common/zzag;

    if-nez v2, :cond_3

    iget v2, v1, Lcom/google/common/base/Splitter;->limit:I

    iget-object v10, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v2, v10, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzg(I[Ljava/lang/Object;Lcom/google/common/base/Splitter;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v2

    iget-object v1, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzag;

    if-nez v1, :cond_2

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    new-instance v1, Lcom/google/common/base/Splitter;

    const/16 v2, 0xc

    const/4 v10, 0x0

    invoke-direct {v1, v2, v10}, Lcom/google/common/base/Splitter;-><init>(IB)V

    const-string v2, "com.google.android.gms.vision.barcode"

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.custom.ica"

    invoke-virtual {v1, v0, v3}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.face"

    invoke-virtual {v1, v0, v4}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.ica"

    invoke-virtual {v1, v0, v5}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.vision.ocr"

    invoke-virtual {v1, v0, v6}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit.langid"

    invoke-virtual {v1, v0, v7}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit.nlclassifier"

    invoke-virtual {v1, v0, v8}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.tflite_dynamite"

    invoke-virtual {v1, v0, v9}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    const-string v0, "com.google.android.gms.mlkit_smartreply"

    invoke-virtual {v1, v0, v12}, Lcom/google/common/base/Splitter;->zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    iget-object v0, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzag;

    if-nez v0, :cond_1

    iget v0, v1, Lcom/google/common/base/Splitter;->limit:I

    iget-object v2, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzg(I[Ljava/lang/Object;Lcom/google/common/base/Splitter;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v0

    iget-object v1, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzag;

    if-nez v1, :cond_0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzag;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xd33d260

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-static {v0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Lcom/google/android/gms/internal/mlkit_common/zzaq;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "APIs must not be empty."

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/zzah;->checkArgument(Ljava/lang/String;Z)V

    new-instance p1, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    sget-object v2, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v3, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    sget-object v4, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/tinder/StateMachine;

    invoke-direct {p1, p0, v4, v2, v3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/tinder/StateMachine;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zaa(Ljava/util/List;Z)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {p0, v2, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(IZ)V

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacv;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zacv;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/base/zaf;->zaa$1:Lcom/google/android/gms/common/Feature;

    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    const/16 v1, 0x6aa8

    iput v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacv;->build()Lcom/google/android/gms/common/api/internal/zacv;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    :goto_0
    new-instance p0, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.vision.DEPENDENCY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.vision.DEPENDENCIES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "requester_app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_common/zzaq;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.class public final Lcom/google/android/play/core/appupdate/zzq;
.super Lcom/google/android/play/core/appupdate/zzo;
.source "SourceFile"


# instance fields
.field public final synthetic zzd:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Lcom/google/android/play/core/appupdate/zzr;

    new-instance p3, Lcom/google/common/base/Joiner;

    const-string v0, "OnRequestInstallCallback"

    const/4 v1, 0x3

    invoke-direct {p3, v0, v1}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/play/core/appupdate/zzo;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/common/base/Joiner;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/google/android/play/core/appupdate/zzo;->zzc(Landroid/os/Bundle;)V

    const-string v2, "error.code"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v4, :cond_0

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    const-string/jumbo v2, "version.code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v2, "update.availability"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "install.status"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "client.version.staleness"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    :goto_0
    const-string v2, "in.app.update.priority"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v2, "bytes.downloaded"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    const-string/jumbo v2, "total.bytes.to.download"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    const-string v2, "additional.size.required"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zzf:Lcom/google/android/play/core/appupdate/zzt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzt;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "assetpacks"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/play/core/appupdate/zzt;->zzb(Ljava/io/File;)J

    move-result-wide v12

    const-string v0, "blocking.intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/PendingIntent;

    const-string v2, "nonblocking.intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/app/PendingIntent;

    const-string v3, "blocking.destructive.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/app/PendingIntent;

    const-string v4, "nonblocking.destructive.intent"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/app/PendingIntent;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move/from16 v18, v7

    const-string/jumbo v7, "update.precondition.failures:blocking.destructive.intent"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move/from16 v19, v8

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "update.precondition.failures:nonblocking.destructive.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_3

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "update.precondition.failures:blocking.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "update.precondition.failures:nonblocking.intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v6 .. v17}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;-><init>(IIIJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget-object v0, v5, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/tasks/zzw;->zze(Ljava/lang/Object;)Z

    return-void
.end method

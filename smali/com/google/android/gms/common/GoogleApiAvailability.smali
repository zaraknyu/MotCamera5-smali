.class public final Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.source "SourceFile"


# static fields
.field public static final zaa:Ljava/lang/Object;

.field public static final zab:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method public static zaa(Landroid/app/Activity;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f1200de

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f1200e8

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f1200e1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zaf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    invoke-static {p1, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p0, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;

    invoke-direct {v2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v2, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 p3, 0x1

    iput-boolean p3, v2, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-boolean p3, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v0, p1, v2, p2, p3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/common/ErrorDialogFragment;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-eqz p3, :cond_2

    iput-object p3, v2, Lcom/google/android/gms/common/ErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    :cond_2
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final showErrorDialogFragment(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 2

    const-string v0, "d"

    invoke-super {p0, p1, v0, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/internal/zad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/zad;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p0, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final zae(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "GMS core API Availability. ConnectionResult="

    const-string v4, ", tag=null"

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "GoogleApiAvailability"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/google/android/gms/common/zad;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/zad;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v3, 0x6

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_1

    const-string v0, "GoogleApiAvailability"

    const-string v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    const-string v5, "common_google_play_services_resolution_required_title"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/zac;->zaf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const v6, 0x7f1200e5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eq v1, v3, :cond_6

    const/16 v7, 0x13

    if-ne v1, v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "common_google_play_services_resolution_required_text"

    invoke-static {v0, v8, v7}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroid/app/NotificationManager;

    new-instance v10, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    iput-boolean v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    iput-object v13, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    iput-object v14, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Landroid/app/Notification;->when:J

    const/4 v14, -0x1

    iput v14, v13, Landroid/app/Notification;->audioStreamType:I

    iput v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v10, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    iput-boolean v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    iput-boolean v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    iget v15, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v13, Landroid/app/Notification;->flags:I

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    new-instance v5, Landroidx/room/concurrent/FileLock;

    const/4 v15, 0x6

    const/4 v4, 0x0

    invoke-direct {v5, v15, v4}, Landroidx/room/concurrent/FileLock;-><init>(IZ)V

    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    invoke-virtual {v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/room/concurrent/FileLock;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    if-nez v5, :cond_7

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    :cond_7
    sget-object v4, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v4, v13, Landroid/app/Notification;->icon:I

    iput v5, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f1200ed

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v6, v4, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v4, v5

    goto :goto_4

    :cond_8
    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    const v4, 0x108008a

    iput v4, v13, Landroid/app/Notification;->icon:I

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/app/Notification;->when:J

    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    :goto_4
    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.google.android.gms.availability"

    invoke-virtual {v9, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f1200e4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    if-nez v5, :cond_a

    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v2, v0, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v9, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_b
    :goto_5
    iput-object v2, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    const-string v0, "android.support.allowGeneratedReplies"

    const-string v2, "invisible_actions"

    const-string v5, "android.car.EXTENSIONS"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v10, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    iget-object v13, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    new-instance v15, Landroid/app/Notification$Builder;

    invoke-direct {v15, v8, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v13, v4

    move-object/from16 p1, v5

    iget-wide v4, v8, Landroid/app/Notification;->when:J

    invoke-virtual {v15, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v8, Landroid/app/Notification;->icon:I

    move/from16 p3, v13

    iget v13, v8, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v4, v5, v13}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v8, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v8, Landroid/app/Notification;->ledARGB:I

    iget v13, v8, Landroid/app/Notification;->ledOnMS:I

    iget v3, v8, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v4, v5, v13, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    move v4, v12

    :goto_6
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    move v4, v12

    :goto_7
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    move v4, v12

    :goto_8
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v8, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    move v4, v12

    :goto_9
    invoke-virtual {v3, v13, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v12, v12, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    iget-object v4, v5, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v4, :cond_10

    iget v4, v5, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v4, :cond_10

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iput-object v4, v5, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    :cond_10
    iget-object v13, v5, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-boolean v4, v5, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    move/from16 v17, v12

    iget-object v12, v5, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    if-eqz v13, :cond_19

    iget v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-ne v6, v14, :cond_11

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/drawable/Icon;

    invoke-virtual {v6}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v14, 0x6

    goto :goto_c

    :cond_11
    const/4 v14, 0x4

    if-eq v6, v14, :cond_13

    const/4 v14, 0x6

    if-ne v6, v14, :cond_12

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getUri() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v14, 0x6

    :goto_b
    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_c
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    :goto_d
    move-object/from16 v20, v3

    :goto_e
    move v3, v4

    const/4 v4, -0x1

    goto/16 :goto_12

    :pswitch_2
    const/4 v14, 0x6

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_d

    :pswitch_3
    const/4 v14, 0x6

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_d

    :pswitch_4
    const/4 v14, 0x6

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, [B

    iget v14, v13, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move-object/from16 v20, v3

    iget v3, v13, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v6, v14, v3}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_e

    :pswitch_5
    move-object/from16 v20, v3

    move v3, v14

    if-ne v6, v3, :cond_14

    iget-object v3, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v3, v4

    :goto_f
    const/4 v4, -0x1

    goto :goto_11

    :cond_14
    move/from16 v3, p3

    if-ne v6, v3, :cond_17

    move v3, v4

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    if-eqz v6, :cond_16

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_10

    :cond_15
    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    goto :goto_f

    :cond_16
    :goto_10
    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v14, ":"

    const/4 v4, -0x1

    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v17

    :goto_11
    iget v14, v13, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v6, v14}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_12

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getResPackage() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v20, v3

    move v3, v4

    move v4, v14

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    :goto_12
    iget-object v14, v13, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_18

    invoke-virtual {v6, v14}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :cond_18
    iget-object v13, v13, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v14, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v13, v14, :cond_1a

    invoke-virtual {v6, v13}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    goto :goto_13

    :pswitch_7
    move-object/from16 v20, v3

    move v3, v4

    move v4, v14

    iget-object v6, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/drawable/Icon;

    goto :goto_13

    :cond_19
    move-object/from16 v20, v3

    move v3, v4

    move v4, v14

    const/4 v6, 0x0

    :cond_1a
    :goto_13
    iget-object v13, v5, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v14, v5, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-direct {v4, v6, v13, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v12, :cond_1b

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_14

    :cond_1b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :goto_14
    invoke-virtual {v6, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.semanticAction"

    move/from16 v12, v17

    invoke-virtual {v6, v3, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v12}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    invoke-virtual {v4, v12}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    invoke-virtual {v4, v12}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.showsUserInterface"

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    invoke-virtual {v6, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-object/from16 v3, v20

    const/16 p3, 0x2

    const/4 v6, 0x4

    const/4 v12, 0x0

    const/4 v14, -0x1

    goto/16 :goto_a

    :cond_1c
    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1d
    iget-boolean v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-boolean v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v3, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v15, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_15

    :cond_1e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_26

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1f

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_1f
    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_20

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_20
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_24

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/core/app/NotificationCompat$Action;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move/from16 v16, v8

    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v8, :cond_21

    iget v8, v13, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v8, :cond_21

    invoke-static {v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    iput-object v8, v13, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    :cond_21
    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    move-object/from16 v18, v8

    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v11

    const-string v11, "icon"

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v18

    move/from16 v21, v18

    move-object/from16 v18, v9

    move/from16 v9, v21

    goto :goto_17

    :cond_22
    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_17
    invoke-virtual {v14, v11, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "title"

    iget-object v11, v13, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v14, v9, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v9, "actionIntent"

    iget-object v11, v13, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v14, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v8, :cond_23

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_18

    :cond_23
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :goto_18
    iget-boolean v8, v13, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {v9, v0, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "extras"

    invoke-virtual {v14, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v8, "remoteInputs"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo v8, "showsUserInterface"

    iget-boolean v9, v13, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    invoke-virtual {v14, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "semanticAction"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v12, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v16, 0x1

    move-object/from16 v9, v18

    move-object/from16 v11, v19

    goto/16 :goto_16

    :cond_24
    move-object/from16 v18, v9

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_25
    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    :cond_26
    move-object/from16 v18, v9

    :goto_19
    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12, v12, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_27
    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-boolean v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    iget-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/room/concurrent/FileLock;

    if-eqz v0, :cond_28

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v13}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    iget-object v3, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_28
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    if-eqz v0, :cond_29

    iget-object v3, v10, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_29
    if-eqz v0, :cond_2a

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2a

    const-string v3, "androidx.core.app.NotificationCompat$BigTextStyle"

    const-string v4, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2b

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2b

    const v0, 0x9b6d

    :goto_1a
    move-object/from16 v9, v18

    goto :goto_1b

    :cond_2b
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0x28c4

    goto :goto_1a

    :goto_1b
    invoke-virtual {v9, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2c
    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zag(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    const-string v0, "d"

    invoke-super {p0, p1, v0, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/internal/zad;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/common/internal/zad;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p3, v0, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p0, p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

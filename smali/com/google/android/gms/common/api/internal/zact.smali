.class public final Lcom/google/android/gms/common/api/internal/zact;
.super Lcom/google/android/gms/signin/internal/zac;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final zaa:Lcom/google/android/gms/signin/zaa;


# instance fields
.field public final zab:Landroid/content/Context;

.field public final zac:Landroid/os/Handler;

.field public final zad:Lcom/google/android/gms/signin/zaa;

.field public final zae:Ljava/util/Set;

.field public final zaf:Lcom/motorola/camera/fsm/Fsm;

.field public zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

.field public zah:Landroidx/profileinstaller/DeviceProfileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/signin/zaa;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/signin/zaa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/base/zau;Lcom/motorola/camera/fsm/Fsm;)V
    .locals 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/motorola/camera/fsm/Fsm;

    iget-object p1, p3, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    sget-object p1, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/signin/zaa;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/signin/zaa;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<<default account>>"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v1, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    sget-object v5, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    if-nez v6, :cond_0

    new-instance v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zab:Lcom/google/android/gms/auth/api/signin/internal/Storage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v5, "defaultGoogleSignInAccount"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "googleSignInAccount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zaa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    :cond_2
    :goto_2
    move-object v1, v3

    :goto_3
    new-instance v5, Lcom/google/android/gms/common/internal/zat;

    iget-object v6, v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {v5, v7, v4, v6, v1}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    new-instance v1, Lcom/google/android/gms/signin/internal/zai;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/base/zaa;->zac(Landroid/os/Parcel;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_4
    const-string v1, "Remote service probably died when signIn is called"

    const-string v4, "SignInClientImpl"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    new-instance v1, Lcom/google/android/gms/signin/internal/zak;

    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v3, 0x9

    const/4 v5, 0x0

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v4, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-virtual {p0, p1}, Landroidx/profileinstaller/DeviceProfileWriter;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zas(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->onConnectionSuspended(I)V

    :cond_1
    return-void
.end method

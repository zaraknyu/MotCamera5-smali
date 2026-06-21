.class public abstract Lcom/google/android/gms/common/GooglePlayServicesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

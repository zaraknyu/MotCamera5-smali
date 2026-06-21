.class public Lcom/motorola/camera/settings/CacheBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VOID_CACHE_BEHAVIOR:Lcom/motorola/camera/settings/CacheBehavior;


# instance fields
.field public final mCacheType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/CacheBehavior;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/CacheBehavior;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/CacheBehavior;->VOID_CACHE_BEHAVIOR:Lcom/motorola/camera/settings/CacheBehavior;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/settings/CacheBehavior;->mCacheType:I

    return-void
.end method


# virtual methods
.method public final getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    iget p0, p0, Lcom/motorola/camera/settings/CacheBehavior;->mCacheType:I

    if-ne p1, p0, :cond_0

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, ".cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public performWrite(Lcom/motorola/camera/settings/Setting;Ljava/util/List;Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    return-void
.end method

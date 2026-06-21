.class public final Landroidx/media3/common/AudioAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/AudioAttributes;


# instance fields
.field public audioAttributesV21:Landroidx/room/ObservedTableVersions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/AudioAttributes;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class p0, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/AudioAttributes;

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAudioAttributesV21()Landroidx/room/ObservedTableVersions;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/room/ObservedTableVersions;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/ObservedTableVersions;

    invoke-direct {v0, p0}, Landroidx/room/ObservedTableVersions;-><init>(Landroidx/media3/common/AudioAttributes;)V

    iput-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/room/ObservedTableVersions;

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/room/ObservedTableVersions;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x1d02666f

    return p0
.end method

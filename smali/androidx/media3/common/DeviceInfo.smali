.class public final Landroidx/media3/common/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final maxVolume:I

.field public final minVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/DeviceInfo$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iput p1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/DeviceInfo;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iget v1, p1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-ne v0, v1, :cond_2

    iget p0, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget p1, p1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x3fd1

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

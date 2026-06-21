.class public final Landroidx/media3/common/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/DeviceInfo$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/DeviceInfo$Builder;->DEFAULT:Landroidx/media3/common/DeviceInfo$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-void
.end method

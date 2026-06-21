.class public final Lcom/motorola/camera/utility/PostViewJsonData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/motorola/camera/utility/PostViewJsonData;",
        "",
        "postViewId",
        "",
        "postViewTotal",
        "<init>",
        "(II)V",
        "getPostViewId",
        "()I",
        "setPostViewId",
        "(I)V",
        "toString",
        "",
        "isPostViewFrameSelectorEnable",
        "",
        "isPostViewFrameFinalData",
        "isPostViewFrameFirstData",
        "Companion",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final Companion:Lcom/motorola/camera/utility/PostViewJsonData$Companion;

.field private static final POST_VIEW_FRAME_FIRST_DATA:I = 0x1

.field private static final POST_VIEW_FRAME_SELECTOR_TOTAL:I = 0x2


# instance fields
.field private postViewId:I

.field private final postViewTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/utility/PostViewJsonData$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/PostViewJsonData;->Companion:Lcom/motorola/camera/utility/PostViewJsonData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/motorola/camera/utility/PostViewJsonData;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    iput p2, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewTotal:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/utility/PostViewJsonData;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getPostViewId()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    return p0
.end method

.method public final isPostViewFrameFinalData()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPostViewFrameFirstData()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPostViewFrameSelectorEnable()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewTotal:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setPostViewId(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lcom/motorola/camera/utility/PostViewJsonData;->postViewTotal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

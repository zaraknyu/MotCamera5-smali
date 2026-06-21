.class public final Lcom/adobe/internal/xmp/XMPException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput p1, p0, Lcom/adobe/internal/xmp/XMPException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/adobe/internal/xmp/XMPException;->errorCode:I

    return-void
.end method

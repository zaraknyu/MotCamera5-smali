.class public final Landroidx/media3/common/text/VoiceSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_NAME:Ljava/lang/String;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/VoiceSpan;->FIELD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/text/VoiceSpan;->name:Ljava/lang/String;

    return-void
.end method

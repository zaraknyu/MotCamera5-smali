.class public final Lcom/google/common/base/CharMatcher$None;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/common/base/CharMatcher$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/CharMatcher$None;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CharMatcher.none()"

    return-object p0
.end method

.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# instance fields
.field public final fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, p4, v0}, Landroidx/room/SharedSQLiteStatement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void
.end method


# virtual methods
.method public final debugFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object p0
.end method

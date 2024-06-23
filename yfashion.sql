-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2024 a las 22:20:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yfashion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idcoment` int(20) NOT NULL,
  `idcliente` int(20) NOT NULL,
  `idarticulo` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `coment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idcoment`, `idcliente`, `idarticulo`, `nombre`, `telefono`, `coment`) VALUES
(1, 1, 483765, 'Elizabeth', '7221687228', 'Me encanto'),
(2, 2, 192607, 'Yolotzin', '7221401731', 'Muy bonito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp2`
--

CREATE TABLE `comp2` (
  `idarticulo` int(20) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `idcliente` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `comp2`
--

INSERT INTO `comp2` (`idarticulo`, `categoria`, `precio`, `nombre`, `telefono`, `direccion`, `correo`, `idcliente`) VALUES
(192607, 'Vestido Elegante-Formal', '$10,000.00', 'Yolotzin', '7221401731', '1ra priv 16 de septiembre', 'yolotzinsan@gmail.com', 2),
(483765, 'Vestido Elegante-De noche', '$9500.00', 'Elizabeth', '7221687228', '1ra priv 16 de septiembre', 'elisanchez@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `idcliente` int(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`nombre`, `telefono`, `idcliente`, `fecha`) VALUES
('Yolotzin', '7221401731', 2, '2024-07-27'),
('Elizabeth', '7221687228', 1, '2024-06-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idcliente` int(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varbinary(255) NOT NULL,
  `foto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idcliente`, `usuario`, `contrasena`, `foto`) VALUES
(1, 'Elizabeth', 0x24327924313024697575494e5946446a4336304a5558766b73373173756f6f6f4b44306c795078483579475a53646558552f545074543561706d2e79, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607101010100f0e1010160f100f15111018181015171912101515161617181516181d2a20181a251d161521312125292e2e2e2e171f3338332c37282d2e2b010a0a0a0e0d0e1a10101b2b261d1f372d2d2d2d2b2b2d2d2d352d2b2d2d2d2d2d2d2d2d2d2d2d2b2b2d2d2b2b2d2d2d2d2d2b2d2d2d2d2d2d2d2d2b2d2d2b2d2dffc000110800b7011303012200021101031101ffc4001c0001010002030101000000000000000000000104050203060708ffc4003b100002010204030603050704030000000000010203110412213105415106132261718191a1b13242c1d1f0071423526272825393e1f1333443ffc400190101010101010100000000000000000000000103020405ffc40020110101000203000203010000000000000000010211032131125113416122ffda000c03010002110311003f00fb422911400000000080000400a210a400180043af11888538b954946315bb6ec898bc4c69539d59bb429c1ce4fc92bb3e0ddafed562719564e35e71a4f48429e6492b6db272df776bf45a12dd126df63a3dafe1b3be5c6e1b457d6ac569ee73abda9c04541fef745f79ff008d4279dcb969185defa1f9b237be89dfcce134d5b7beeddda69f9136eb4fd570a89ecce4cfce9c2fb71c4693bd2acadbe59422d75e5adbf03eadd8aedfd1c6a8d3ade0c4d926b2b5194b44ecf5e6f9d8bb73a7b521485408180a10a40042b204085205190ac81119c248ec671615d5621d96011b00011400002000000ca200400400010008f9efed878e4e850a5868276c4669547d6106bc1e8dbbbf44b99f19aea56ccdacedd9db973f8ea7d63f6db4bff4a57ff5a297fb4dfd17c0f03c37b318bc5da54609d3cf693724b2f9d9bd74b3d3a1965755ae3371e732c9f396bbea755572496bfdabf1b9edb8a762f13876da51a904feebb4ade8f43cc62b0534ece1252beab2bd3c89338eaf1dd6d82f33ddfcbe86470fc6ba752138b95d495ececf4decf93f3e5a16be06b421de4a9c943af4bfd0c6a71774eda37f4e7f13adcae6cb3d7ea6e07895570d42aa9e753a519295ad9935bb5c9f55d6e669a0ec0ab70cc0e8d5f0d17eef56fe7737e7719a000a200022000010a40a100004280388280334801000000000085214085646040c06040004788fda4613bfee2318b6e8373a9a6d4ea26beb03b2ab8e128c234a1151495f5495f45abe6d9bbe369e7828c74945aa8ecbecaccd2f46eebdcc2af454e3092b3b24e375e479b3b775ebc24d4796a7daf855a8e8ba7aa7974a9196ab7ba5aa1c62ad1a5072a905f6acbc377b5ccac3767297ef1df5a39a32cda4524a4f9bf331fb6f80552d17b38abfe918dfb6f8f5d3cebe314e6ad1a15323d1de1a346a7b4fc268c2952ad422d29c9acab6d75d172f436f84e1118bcd18252d3c49bfbbb7fd1b1e2aa2a345ce2a495d5bfbda85d2ebff002599497a4cb1b9755f47ecc615d1c0e12949a72a786a517eaa0b636648ab2496c9597a14f6be7a000a200022000010a40a100080040a0000cc0010000000000801419180c08000200c0475d5a319e9257f8fe0785c5f1b587a752934dce8472fabcd963af2e573df1e03b71c372d4a93b2c95a9bbbe927baf2d629af5663cd3adb6e1cbbd56af0bda674a9a9aa55aa4a6dca4f23b5aff7795bdcd4f18edb42ac977742a35b4af06b29bfa30c3d1c377d4e318c6714e69d3528b965cb76acf2cadbdb9a3cfcf174b13271a6e9ae4dd3a6f37b5f6dfe479fa7b24df69c1b8d425295352bd936afa592d6cff5c8f63d97e114f16a5899b9776aa2a74d69694609372eaaf29cd7a23e772c3d384e51a49caf28d3d24e4df557ddb7b5fccfb6700c03c3e1a95195b346379db6cf279a56f2bbb7b1a71612dfe31e6e4b27f5b023290f53c810a400000880000429008000a3214800000660008000280000800604214800020000044357c6e8c66b24d5e328d9af73635eb4611729bb457abf6496adf9235f8da8a4eeb64ac67c9e34e3f5e07194ab61632a6a129d077cad5e56daca496debb7d0f1d571b27272a309293f0b4a366daea7d86aeab54793e294e1de3515a27f3679eea3d38db7a6a7b21c31c2b519d5779cab43d23e25f17e7f03ec47cbf0af2494968e2d497aa773daf0ded2d1ab2eee7fc3a9e1b5df8659b6b4b96a9ab3f234e1cbd67cf8eb4dd90a43d0f3a029000018440001002000005400000001980020000000001002880ac80400c1c4e236d7c2dd9fad80cb9d58addaf898d3c7c768eafcee8d639789c7efc5e9e6b74be074d3a8b3b5cd6bbee9fe411dd8a94a6de67ab565d13d1c5af75f23b2551349f5f93e871afba7e567e863d48f34da6f9f27fdcbf138cb1dbbc32d189a8a375d4d16269666e5c91b1e2946a4e1685b35ee9ddad3e06bebc251a2e3ff00d1fba30cb0cafe9e8c73c64f58126b5e870c261a526e52beaeed744b44bd97cce5c3b08db7de4b3496af4b5bd11be86174b5ad74fe869c5c7f1eeb3e5e4df51384f1aad4d284ed38a5cdea9793fcefec7a0c2f1aa33b5db8be8d73f5479551b34d2d55b5f919bdcda4edb3f12f73662f591926ae9a6bc8a795a55a707784acbeabab373c3789779e197dab68ff009bdb9303600ac811030181000c08000a8000000033000400000001440001000075d67a1ac569c5abf36bfb649fe0cd8e23634b52592aae51a8fe1512b35eeacffc5846355adac5ed2d612f29c753841deadd734a5f131b1d37175e4b74a352d6daa5356969e71c86470e92769ad9c2ebd2f2b01b19257b795be274dad75cd32df66c959ed2eab502fc0d7f128a565fcc64569596fcfe4cebc546f523e806350a097abfa19d0deda1d6e2bd91ce3bea06bd42f3a91e97332acff87992d6d957f918f7cb5aa3b3fb1748eca0b32515b77b7bff004fdafa30ae1889f89525f760a7536e6ed08fe233e47993d63e2df6e67460aa66ef2ab76ef6a3a97dd4692f053b79b82ba5fd431551776edb4af95754b76fcdb03d9d2a8a518c96d249af747230b82cef4217dd26be0ff2b19a04008102148003002a00000000cc001000000000400144056403a711b1a5e214f346696f65387f74599d4b1aaa3a893d69d49539249d934ee937d6ce2fdcc7c46597aabdbe167f51b869a2c462539c25cabd3716ba49272fa464bd91d3d93bac2c22ef7a73ab4b5df2c6acf2dfdac63f12796116aedc24e7d1f789b728dbcfc4bdceeecae263385671778bc43947d250a6fa75b92652f8b71b3d6ff92fc8e1539aea72be8754e4b5b15cb1ebbf0edaa68ed4aee12d36fa98d5e7fad4c9c3c6f140729f25ee70a8fa1ce6d5eff89d152a74ea07462ddaaa9758d99aec0569ac2689f793a9529d3f5751d28fb786f7e877f13ae95e5d1f5db43a382cbbccab2c9f7518a56ff5270cd51b6f456ced7bbb6c159ae9a949534fc10fb4ff009a5cddba2b7c0ebacf3cff00a365e5189b0a987d32abc5356b2d34f36f7312b7754d5e72847d5af5e607a0e012bd27e537f446c8f2dd96ed0616ad5950a15e9ce4d66b45a7aaf4f7f81ea4081801108500400054052000001980020000a00002000010a4030ead9393496f77e6fafc8d0636a4ee9e5cf4af7797edc7fc79af477f266f67ccd1636e9b74da55bf95ed517eb9f23cd9d7a708d2f12af0a5fc78b55294a2d544b7b2e7eab54d3d6de963cef02c7c70b8a9d085d51a96a94d5f64f4b2f2d0de63313de372cae1523a54a6d6baf57cd7496da7a9e478f611d1950ab7f045e47a6d093f0fc1e9ee8e70cffd3acf09f07d3635eeb7f9ee49793ffb34bc2b1ea508bbe96fd73368ea26aeba1eb7916715f132696de862a6f439d19bdbc8239d69edaee62626a24e3beb6673c554b59fb1afe3b59463195f912ac69f8ce3d77555b7afe3a2379d9dc62fdda9ac3454a56cd564e56842a4ad26a52ddbf12d127a5b6d0f2f87e0d57199b5c945c9789eada4d379173dad7dbd763d560f86d3c351546926a0aef5776e4f56dbeaccb2e4d78df1e2dfac2e2aea414a588c4cbada2d538fcbc4fdd9aec354a739a54e32717bf8347fe523bb1184a1de2ab529d6ad51fd88bcd28c175514b2af5918f5b1b5632d30d52d6fbae9e8bd2323cf6daf4cc649d365fb31ec94b0f5f138aa90718a9ce961eff7a199f892e96d2fcf53e8e69fb2588ab530b075636b690d55dc7cecf47c8dc1ecc3c7873eae86400e9c200008000a10ac800000660000000010a008000042b201832dd9ade2386ceac9d9ee9f47d51b2ada49fa98b88763cf946f8d7929f0ec46753a9185e327e253d651f4b689e9a754693b4580a9563383a72cae365ced7db6f34be07b9ad2ea6256b3e863716f32fb7cb385633114da84e95456d35835b79b563db60789dd252d34deff00f06d1e1d3e5a7a1d32c342db2349cd67e995e297f68b1d0bfda5a72bdee59e3b2a938a949d9bb2d2eeda2bbd8ea546116f60eac393e5aea5fcd49c31d10c7cabab24e0d594949abaf86ebcee69f13c4e74b111a5c41539506ff8328a69256fbc9f356d6f7df4d8cac763a9d2a919df47254e6bca5f65af352b2f4933a78ed4a189a32855968f676b65e8d3e4c9f92df5d4e393c7a9a7888d97776cbd797b12acafbc8f9c767bb47fbbce584c4d54d41ff0e69ab496ebd3f4ba1e827c5ea555970f4ea4dff33bc62be2b5f64717a778f6cae235310fc346746314f57272dbc925ab30a1879b7ad5bddd9b8b8af9347652e175a693af51bf28de2bf336580e170538a8c56672497bbb1cfaeed923dcf04c14685084239b54a52bbbf89a57f4338581ee93534f9d6eeed0005442140100014200c08538dca1198538a285500002148000001900030b1da34faafa1a5c662757a9e831b45ce0d27696ebd4f2b5781e2ea3da9c52e729efe8a3730e4977d37e3b8ebbaeaa959bd4c4a9896b99d789c1d6a77cd95fa37b7c0c5a93a8b687cd195c72fa6b32c7eddb53192f331658a9be4fdcc7e2389a94a2a538cb5dacd1a9afc4aa49668af0efa59b5f127c3275f3c5b5c457b7da97aea6b2bf1a82d20a5295ada2bfebdcc0592a3fe25595f9e6d3e46db0584a71d9c4e75a752cad2e270f8bc569182a716d3bb7ae967a25b7cccfc1765e4da96264ea3bf37a7c363754eab4eda69ec72fdee4b9a26d74c8c370fa50b5a8c34fe9467c1c7651b7a23551c5bfe6476d3c67984b1b47032fb3f433d64f941393fc3e7f434157882d91ecbb2b87cb43bc7bd577ff0015a2fc5fb9af1cde4cf977316e4021eb78800010852000081423656ce12604b8385c046c132a002a800000000000800020000f318ea777aae6604a85ef6b6ec0031b19835529e56af6dafd0d252e1ea2f5b59ebe801cabb67c3237b59792fccea7c169ead2b3f26d00350dd74cb8434af1a92bfaf2f7463d5e1f56da4f5eba7e4407370c7e9d4e4cbedd588c34e39639e59ad76eebcff22f0ba0dd58aa8f32cd6b37f5d001319f4bf3cbedf41e03d9fc24e9c6a4e8a735292fb53b68f4bc6f667a74acacb65a2f2401dc9278e2e56fa1002b94000103002a06001c5b3ae4c008ebcc0003ffd9),
(2, 'Yolotzin', 0x243279243130245472505470417348634448674f6536702f65386146654f702f5464646a735556333262734836634e6a326f3238624c73556b692e43, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906070f0f0f0d0e0f0d0d0d0d0d0f0d0d0e0e0d0f100f0d0d0d1511161615151815181d2820181a251b151521312125292b2e2e2e171f3338332d37282d2e2b010a0a0a0e0d0e1b10101a2f252025312b2d2d2d2b2b372d3535322d2d2d2f2d2d2d2d2b2d2d2d2d2d2d2d2d2d2d352d2d2b2e2d2d2d2d2d2d2d2b2d2d2d2d2d2dffc000110800b7011303012200021101031101ffc4001c0000030002030100000000000000000000000102050603040708ffc4003d10000201030202080304080603000000000001020304111221053106132241516171810791a1324282b114235262d1e1f0f11524335372921743c1ffc4001a010100030101010000000000000000000000010304050206ffc40027110100020200050304030000000000000000010203110412213141051351142261713242a1ffda000c03010002110311003f00df12391212472240248b4248a40086034003c06078010d21e000300d0d0f00421a43c0d012d0b053409013806509812c4310080620244ca1012c450b002c0994260400c0040000313430c013802800a48b4848a0114848a4008a4245006011490600301818c091b1e03004e063100992de3729b3cbfe26f49eb393b0b67a63b2b8a89e252cfdc5e5f9f222674988db35c77e21db509ca9d14eea70cea74da54f2bb94bbfd8c15c7c549354e50b55494a2a5fe627f6bd34f779fd0e0e01f0c275630ad3ad1a6e714f115273d2fb9b66dd47e1b59c69a855a7d7b4b4a95449b4b9ede05139a3c34460f93e8bf4d6dafb4d3ff46e1acf56e5aa13ff0084bbfd3666ce78bf4afa28b86d553b794e34e6f5d3df0e9555fb3fd771e81d04e923beb7fd635fa451c46ae36d49fd99e3cf0fdd32ca5e2d0af2639a4b670002c54422840210c40213450981022d8809018800603010c000b4310d00d148945201a29128a02902122800621a00006480db16404c0e0beaca14ea4e4f11846536fc12593c33872773c42855a8de9ab565abd77783d5ba7f77d5f0fb979c6a8aa6bf1349fd3278df007525736ca0f0e55719e7a5b6f7df6efc94e5ecbf0c757d13c3da828f249258f24762f6ee3a5b72492ddb7b23ce9f472bf5fdab4a1560e5955eabad52e64b1952eb17279db1dc97b1b5de5a7ea2349cbff6429c9f8d3cf9f799a2662ba86b9ac4db72d2fa79c5ec6e68a54aee954ad46a46692d4d497d992d58c670fc7b8d33a25c4dd9713a3978a55a5fa3cfc94a585f27866fbc7ba2d7d5a52c5551b6845f63452853d3a5e52496a6f2fbdfcf99e49c767a65192ce62d49f8a92c67df6fa96e3e9d1566ebd5f48a19d0e0975d6dbd0a8de5ce95393f36e2b73be6a62260310084508042180122284c090188043000180001608600345224a40304087801a2884500c6242c814262d42d40313064b03cff00e31dde9b38413c395583f3efc7e52fa1e61c0eefabb8b4697669d5a752a3f04e4925f26d9bf7c5992ab2a54149758e0a704f188e252cb7f43cd2398e60b972d5e351e5a7f34557ebd17d3a757d2963c5a0e14a30796f6f35e262f8bdcdf28d4842ce9ce329474d575b6d29eededd97e0b7355e8174a6def292a55d45554a30ad17b3d6b6535ea6df57a330716a2edf44b7cd4a5ae697ab78fa193af696e8e5ef02bf1d953b6975894dc2094f461a8cf09633eaf63e7ce2d3cd7a926b10a9524a51fd9964f4be9b71da1c3e92b4b68c1283d58828aeb2e1f26f1cf1cfe5e079a2b7d74d546fb5dad6df8ac73febc0b3144f79539a63b43d7be15f15752d7a89fdab796984bc69bfb2bdb75ec6f47967c25b9a528d6826d57834a717f7a0fecb5ef93d491aabd98addcc4311e9e40000084300108620131142010000000c00b00024345210d00d142432008621921a012180b02c140405822aec9b390e9714cba6e31e73ecff000f6ce3db2078171fe252ad71775aa4b2b538c5e79a527b47cb08c44e6ea65a6968c4daf6e5e89247271c87f98af059c425382cf3ca93c9d4b6c462b3f79b8c977b59fec53f969fc333d16b7556e952de9ceb45ca9ca3b35351cff136cbabde27420e9baf370598f7e7062be1ff000dad757d2ba8c711b65aa0b188ea598a8af6c9eb1c538642ae3b19725178f5464cb3f73562fe2f01e24a72ab19556defaa4e5dd1396f311854a7c9c945a69ecdedbaf9237ee9074524a770d53935d4c74616dad36da6fbb66b99e6b714e71da6b128e54577a8ad964ba96898537acc4b6af8514e7fe2317ca2e94e4fcd66291ee88f0ae815dba5796b53943ad8d1a9e51a90718bf4d4e3f33dd51a292cb9235260007b7820188004310080620100c402000000000286202450c48680a43250c0a01000d31e44300c86442680556aa8c5ca4f114b2d9aaf16e3f5de634a9420b9eb93d73d3e3a7184fe6653a41576a74d3fb4dcdfb6cbeafe86163cff00797d7fba6cf9df54f52c98b2fb58e75aeeecf01c1d2d4f72f1bf8795f496ce6ee2a5c496a75a4e53d31514a79df65fd6e70f09e075ab6a92a4d437516f659c9e977767055778a70a99d9ae523b34e8c610d314924f9232dbd5efedc44475f96cfa1a737378f8574428c6c68c60e9c6727bce49b8cb3e4ff91b453e376ef77ae9cb18c38e563d51adc24536bc118a9ea59e93d677fb597e171dbf1fa66388f11b69a7853949a6b38515f5678c71fe075f5cde3b09c926b935958fa63e47a5d48fa23a1754d4934f745f8bd532f36e74f33c1e398d3cbb87529c6a283d6b2e2938e5378dbbbd8f4be1b7d7d6f1d4abcaa4524e50acdd55e997baf66705b585352d4a0bcbc8c85658a195cea49463f89a4bf89767f51bdad1c9d118f84a56b3168db65e03c715d271943aaab15971ce6334b09b8bf75f3465cd32ca4a95cdab8ac667d4bf38ca325f9e0dcceefa77153c461e6b778e8e2f1b8230e4d57b01001bd8c0800000008080620100000806003010c914804860521923018c4003192301808606b7c62a6ab892ff006e3087bef27f9fd0e8cb692f72ed1cae6b57eabf58d5496ac6310cbca4dbdb386b6e7ba3b17bc36b534a5283d2b0db589617b6e7c37158f2e5cd7c9cb3a999f0fa9c16a5295a6e3b3a97b4729e3c72bd56ff00c7e671c65f5c1d98f37be535178f0783925462f9ff003473f9f51a968de9d5822de179b2d53c6d909452ef4beac6cdbaf56474649c9e3b973666236f1ef26a538e30b091eab9220db0d553cc60bedd46a115fb29f397c8c95dd3c4a845728b94fcb11838afacd7c8eba7155e9e71aa4f4f9e31fd8e7d7aa7279cc609453f16fb4fe8e25b699e9fa9ff007a23cb1bc5ee7ab50a9df4aa539af16e32cfff000f424f3bae4f75e879c748639a7f891bc701adaed2d26f9ca851cffcb424feb93e93d0e7ecb438deab1f744bbe0023bce4000000000010008000008000000086224521928a40345123018210c06084080a3afc46bba746b54519cdc29d49a8d38b94e4d45bc28ae6fc8e7093c26fc13644c6e34989d4b01d0cb7a746de328c5d3eba552be89b4a6a5524e6d3df9e64662faba707bc5ac3caca72c78e0c5708ab27d52945d094239c4e309d7716b796136a9c5f8c9e76e48c9c62a7293eb3acf59c66a3eebecb399c9aae9d6f3b69179c434548417de8b9b7fbab6fcff2263c5376b3bacb387a57c355b5c2a9192d156134a0f9d396acf7773cbf9330aeaf6e32fda583817e0eb59d4bad4c9cd1b6cd4ef1cb7c9d8a557bf9b303655792f53316b6f526bb309bcf8278325f0f5d442ddc7976655f6e7cde179f8b3a3737f8c6fcd67d9f23272e07715352c469ad2a11729728bfb4f0b3b9d1e2bd0aacfacab1b98b937954dd36a0a29631ab2fe783460e02f6eb31a536cf4af4db0dfe26b5f3fd64f34296165a9cf1997e18a9bf637be19c220a9a7513727be94da8c7cb6e7e1ec79bf0db1ab1bdb6a55a0e32eba3259dd496f969f27b367ac39e163c0e8e2e171c4ee636cd9b25a7b4b4be9cd28d2a33a904d68ed38e5b4e2b9f3f232fd04bc556c69697b425382f4cea5f4923a7d23a31b8952b79e5c2bd48529e1e1e893c4b0fd3267782f06b7b2a5d4db525469e5c9a4dc9ca4fbdc9b6dbd91d5e0f1447dd5e8e5f1793facb2002c81d0603010000001001001200004000000200001a1a12180c62180c04301808007900101a8707b2a7faca0e19d156a4650729384e519b5aa51ce24f65bb5e06c16fc3a9c5ea508c5b586e2926d786518ea94faabcabb7fa8a15a3e1cb4cbeab3f88efcb89c56d2d99c9c95d5e76ebd2dba44c396b58d19ed2a707e528a6704781db7fb147fe91fe01fa627df8f52657697df3c72d67c3d735a3cbb54b87d28fd98535e9148ecc74af0356e23d27a145e9d6e751ed1a74fb5393f248e4b2a77972b5d56eca8bdd42294ee64bcdbecc3ebec7a8a4478799b4cf967ae78bd0a38d734b3b25ce527e09736c857aeb2da94a116b6753b2dfe1e7f3c1c16d6342965c29f6dac3a936e5525eb27bfb7239275d2ee426d29888759f0ced424e5a9c1e63b72676a54da4df71c7fe2097348e1ad7dd6269631de79d43d6e58aa4face21417753eb2a3f6834bead1b51aef47ad9bb8b9aef9452a10f7c4a5f944d84e970f5e5a4399c4db79240080bd41808006002203010000c4048600004a1893280430001a2912520000000182000018981d5bfb255547b4e1386744d61b59e69aef4f6f9231357a34a4f54aeab67ca30497b19f03c4e3accee61eeb92d58d44bc9ba45c46f6c1cbf48b7c435350aee739519c7b9e54767fbaf7354bae9b5c4df66b50847963aba98c79b6f3f2c1ebbf113834efac276f4b1d73a94a74a2f94a717cbcb66f73ce297c17e2ce1ab5d8a6e39d0ebd4d79c6eb6a78cfb9e230d61ee73da596b1a77b691b7acdf0b8d7ba853ad08bfd2155952a92d34e5b465cd9cdff93aa61a8c69dc38eef109d38e1672d4a49783eeee361e39d09e2374f835c51746debd959dbd1b8854a928ca352296629c62d4a3bc93c330b6bf09ee2556a4674aa53a556726e73af474d3596fb318a726b2ff0091ebdaa7984466bfcbad53e26474539ced6b45558b9c5c31358d528beff18b0abd324ed1df468dd3b68d5ea2538c20f454c278976b6e6be68de7847c29b0a74e30b9eb2e5536dc23d64e9c526dcbb5a30e5bca5e58ee364a3d16b2a542a5ad0a10b5a355a94d50ec4dcd6312d5fb5b2df73c4e0a7c3d7d45fe5e113e9ceb6946dee9464a7a652c26e7a5b8a4973ccb4ae7c9b7be0dcfa2363715d4aa57552de9a49463870a939b49b7da5f6527cf1be7c8ddba49d0cb6bca352938c60e5da84a308ad134f317e2fcf7f130bd1685cd3a2e85cc66a74673a709cb38a904f09a7debfac2e44c62ac4f63debebbb2d6d4234e0a10588acf7e5b6de5b6fbd9ca2c81728dec00800a01000c04220301000c6843403000038e25a2225a250630480240d00d0000c4031891404860a00200a101cfc3eca5d63ace4e4a508c634da58861b6e49f36de57fd5193b4a31a71d108b8c754e6d36dbd5393949efbeedb7ee715b47b296cf1c9e3076d100c8f5089978817a894c8d5f9148067438a51d50cfde5ba677ce2aeb29a035e0392bd251785b2e67100c0400301000c40000310014862430188009438d32e2c000b8940012068600020001a1800003000258b19dbc76180199a3c92ee47380100dc89498001c2a2dfb67e67369ee000193200030fc461869faa3a40000000000000000000340005000000001287ffd9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idcoment`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idarticulo` (`idarticulo`),
  ADD KEY `telefono` (`telefono`);

--
-- Indices de la tabla `comp2`
--
ALTER TABLE `comp2`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`telefono`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idcliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `usuarios` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idarticulo`) REFERENCES `comp2` (`idarticulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_3` FOREIGN KEY (`telefono`) REFERENCES `datos` (`telefono`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comp2`
--
ALTER TABLE `comp2`
  ADD CONSTRAINT `comp2_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `usuarios` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `usuarios` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;